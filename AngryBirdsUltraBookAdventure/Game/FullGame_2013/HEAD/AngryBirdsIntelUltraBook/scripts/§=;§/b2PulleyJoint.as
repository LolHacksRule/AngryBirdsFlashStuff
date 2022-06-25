package §=;§
{
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Math;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §`0§:Number = 2.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`0§ = 2;
         }
      }
      
      private var §71§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §,!U§:Number;
      
      private var §2Z§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §6D§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §;D§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §]3§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
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
                  loop2:
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     loop3:
                     for(; !_loc5_; while(!(_loc5_ && _loc3_))
                     {
                        §§push(this);
                        §§push(b2Math);
                        §§push(param1.§=R§);
                        §§push(this.§,!U§);
                        if(_loc6_)
                        {
                           §§push(§`0§);
                           if(!_loc5_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!_loc5_)
                              {
                                 addr103:
                                 §§push(§§pop() / this.§2Z§);
                              }
                              §§pop().m_maxLength2 = §§pop().§]!#§(§§pop(),§§pop());
                              §§goto(addr106);
                           }
                        }
                        §§goto(addr103);
                     })
                     {
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                        this.m_u1 = new b2Vec2();
                        while(true)
                        {
                           this.m_u2 = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              super(param1);
                              while(true)
                              {
                                 this.§71§ = §-;§.m_world.m_groundBody;
                                 while(_loc6_ || _loc3_)
                                 {
                                    §§push(this.m_groundAnchor1);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1.§]2§);
                                       addr348:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc6_)
                                          {
                                             §§push(this.§71§);
                                             while(true)
                                             {
                                                §§push(§§pop().m_xf);
                                                addr354:
                                                addr305:
                                                while(true)
                                                {
                                                   §§push(§§pop().position);
                                                   addr355:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr356:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                   }
                                                }
                                                §§push(this.§71§);
                                                if(!(_loc6_ || this))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().m_xf);
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§push(§§pop().position);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr357:
                                                      §§push(§§pop().y);
                                                      if(!_loc5_)
                                                      {
                                                         addr334:
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§pop().y = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(this.m_groundAnchor2);
                                                               while(true)
                                                               {
                                                                  §§push(param1.§>f§);
                                                                  addr272:
                                                                  addr287:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr273:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§71§);
                                                                        addr275:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().m_xf);
                                                                           addr276:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().position);
                                                                              addr277:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr278:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    addr279:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(this.m_groundAnchor2);
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(param1.§>f§);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(this.§71§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop().m_xf);
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              §§push(§§pop().position);
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    addr249:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§goto(addr273);
                                                                                    }
                                                                                    §§goto(addr279);
                                                                                 }
                                                                                 §§goto(addr278);
                                                                              }
                                                                              §§goto(addr277);
                                                                           }
                                                                           §§goto(addr276);
                                                                        }
                                                                        §§goto(addr275);
                                                                     }
                                                                     §§goto(addr249);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr272);
                                                                  }
                                                               }
                                                            }
                                                            addr342:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr356);
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         continue loop8;
                                                      }
                                                      addr357:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr355);
                                                   }
                                                   §§goto(addr356);
                                                }
                                                else
                                                {
                                                   §§goto(addr354);
                                                }
                                             }
                                          }
                                          §§goto(addr357);
                                       }
                                    }
                                    while(!(_loc5_ && _loc2_))
                                    {
                                       this.m_limitImpulse1 = 0;
                                       while(true)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             if(_loc6_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr342);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(b2Math);
                                                §§push(param1.§?!G§);
                                                §§push(this.§,!U§);
                                                if(_loc6_)
                                                {
                                                   §§push(this.§2Z§);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * §`0§);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§pop().m_maxLength1 = §§pop().§]!#§(§§pop(),§§pop());
                                                continue loop3;
                                             }
                                             addr159:
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           if(!(_loc6_ || this))
                           {
                              continue;
                           }
                           §§push(this);
                           §§push(param1.§?j§);
                           if(!_loc5_)
                           {
                              §§push(this.§2Z§);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() * param1.§[8§);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().§,!U§ = §§pop();
                           §§goto(addr159);
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr197);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §-;§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §`x§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§;D§);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  addr52:
                  §§push(this.m_u2.x);
                  if(!_loc3_)
                  {
                     addr58:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr66:
                        §§push(this.§;D§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc2_)
                           {
                              addr76:
                              §§push(§§pop() * this.m_u2.y);
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop());
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr66);
               }
            }
            §§goto(addr58);
         }
         §§goto(addr52);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §5C§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§71§.m_xf.position.Copy();
         if(_loc3_)
         {
            _loc1_.§!V§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §@!N§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§71§.m_xf.position.Copy();
         if(_loc3_ || _loc3_)
         {
            _loc1_.§!V§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = §-;§.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§71§.m_xf.position.x);
         if(!(_loc7_ && this))
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!(_loc7_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§71§.m_xf.position.y);
         if(_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(!_loc7_)
            {
               addr71:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop() - _loc2_);
               if(_loc6_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(!(_loc7_ && _loc1_))
            {
               §§push(§§pop() - _loc3_);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         }
         §§goto(addr71);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = §`x§.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§71§.m_xf.position.x);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§71§.m_xf.position.y);
         if(_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor2.y);
            if(_loc6_ || _loc3_)
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
               addr96:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(!_loc7_)
            {
               §§push(§§pop() - _loc3_);
               if(!_loc7_)
               {
                  addr106:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr106);
         }
         §§goto(addr96);
      }
      
      public function §`8§() : Number
      {
         return this.§2Z§;
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
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         _loc2_ = §-;§;
         _loc3_ = §`x§;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc28_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc27_ || param1)
            {
               addr65:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc28_)
            {
               §§push(this.m_localAnchor1.y);
               if(!(_loc28_ && _loc3_))
               {
                  §§push(_loc2_.m_sweep.localCenter.y);
                  if(!(_loc28_ && param1))
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc27_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc28_ && _loc3_))
                        {
                           addr101:
                           _loc6_ = §§pop();
                           §§push(_loc4_.col1.x);
                           if(_loc27_)
                           {
                              addr107:
                              §§push(_loc5_);
                              if(_loc27_ || _loc3_)
                              {
                                 addr115:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc28_)
                                 {
                                    addr118:
                                    §§push(_loc4_.col2.x);
                                    if(!(_loc28_ && _loc2_))
                                    {
                                       addr130:
                                       §§push(§§pop() + §§pop() * _loc6_);
                                       if(!(_loc28_ && _loc2_))
                                       {
                                          addr138:
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr130);
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!_loc28_)
                                 {
                                    §§push(_loc4_.col1.y);
                                    if(!(_loc28_ && param1))
                                    {
                                       §§push(_loc5_);
                                       if(_loc27_ || this)
                                       {
                                          addr192:
                                          addr193:
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc28_ && _loc2_))
                                          {
                                             §§push(_loc4_.col2.y);
                                             if(!_loc28_)
                                             {
                                                §§push(§§pop() * _loc6_);
                                             }
                                          }
                                          _loc5_ = Number(§§pop());
                                          _loc4_ = _loc3_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(!(_loc28_ && _loc2_))
                                          {
                                             §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                             if(_loc27_)
                                             {
                                                addr216:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(!(_loc28_ && this))
                                             {
                                                §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                if(!_loc28_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc9_:* = §§pop();
                                             if(_loc27_ || _loc2_)
                                             {
                                                §§push(_loc4_.col1);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc27_ || this)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc27_ || param1)
                                                      {
                                                         addr354:
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc28_)
                                                         {
                                                            addr346:
                                                            §§push(_loc4_.col2);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc28_)
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc9_);
                                                                  addr352:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr353:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc27_ || this)
                                                            {
                                                               addr377:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(_loc2_.m_sweep.c.y);
                                                            if(!(_loc28_ && this))
                                                            {
                                                               §§push(§§pop() + _loc6_);
                                                               if(!_loc28_)
                                                               {
                                                                  addr394:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc3_.m_sweep.c.x);
                                                               if(_loc27_ || this)
                                                               {
                                                                  §§push(§§pop() + _loc8_);
                                                                  if(_loc27_ || param1)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               §§push(_loc3_.m_sweep.c.y);
                                                               if(!(_loc28_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() + _loc9_);
                                                                  if(_loc27_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc13_:* = §§pop();
                                                               §§push(this.§71§.m_xf.position.x);
                                                               if(_loc27_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() + this.m_groundAnchor1.x);
                                                                  if(_loc27_ || _loc3_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc14_:* = §§pop();
                                                               §§push(this.§71§.m_xf.position.y);
                                                               if(!(_loc28_ && this))
                                                               {
                                                                  §§push(§§pop() + this.m_groundAnchor1.y);
                                                                  if(!_loc28_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc15_:* = §§pop();
                                                               §§push(this.§71§.m_xf.position.x);
                                                               if(_loc27_ || this)
                                                               {
                                                                  §§push(§§pop() + this.m_groundAnchor2.x);
                                                                  if(_loc27_ || _loc2_)
                                                                  {
                                                                     addr503:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc16_:* = §§pop();
                                                                  §§push(this.§71§.m_xf.position.y);
                                                                  if(!(_loc28_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() + this.m_groundAnchor2.y);
                                                                     if(!(_loc28_ && _loc3_))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc17_:* = §§pop();
                                                                  if(_loc27_)
                                                                  {
                                                                     §§push(this.m_u1);
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(_loc14_);
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr543:
                                                                              §§push(§§pop() - §§pop());
                                                                              §§push(_loc11_);
                                                                              if(!(_loc28_ && param1))
                                                                              {
                                                                                 §§push(§§pop() - _loc15_);
                                                                              }
                                                                           }
                                                                           §§pop().Set(§§pop(),§§pop());
                                                                           if(_loc27_)
                                                                           {
                                                                              addr557:
                                                                              §§push(this.m_u2);
                                                                              §§push(_loc12_);
                                                                              if(!(_loc28_ && _loc2_))
                                                                              {
                                                                                 §§push(_loc16_);
                                                                                 if(!(_loc28_ && _loc3_))
                                                                                 {
                                                                                    addr576:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    §§push(_loc13_);
                                                                                    if(!(_loc28_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() - _loc17_);
                                                                                    }
                                                                                 }
                                                                                 §§pop().Set(§§pop(),§§pop());
                                                                                 addr588:
                                                                                 §§push(this.m_u1.§[!K§());
                                                                                 if(_loc27_ || this)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc18_:* = §§pop();
                                                                                 §§push(this.m_u2.§[!K§());
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc19_:* = §§pop();
                                                                                 if(!(_loc28_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc18_);
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(b2Settings.b2_linearSlop);
                                                                                       if(!(_loc28_ && this))
                                                                                       {
                                                                                          if(§§pop() <= §§pop())
                                                                                          {
                                                                                             §§push(this.m_u1);
                                                                                             if(_loc27_ || _loc3_)
                                                                                             {
                                                                                                §§pop().§@!;§();
                                                                                                loop15:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop13:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         §§push(b2Settings.b2_linearSlop);
                                                                                                         if(_loc27_ || _loc3_)
                                                                                                         {
                                                                                                            if(§§pop() <= §§pop())
                                                                                                            {
                                                                                                               §§push(this.m_u2);
                                                                                                               if(_loc27_ || _loc3_)
                                                                                                               {
                                                                                                                  §§pop().§@!;§();
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        if(_loc27_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           addr711:
                                                                                                                           §§push(this.§,!U§);
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              §§push(_loc18_);
                                                                                                                              if(!(_loc28_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!(_loc28_ && param1))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 addr751:
                                                                                                                                 var _loc20_:* = §§pop();
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc20_);
                                                                                                                                    if(!(_loc28_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr901:
                                                                                                                                       if(§§pop() > 0)
                                                                                                                                       {
                                                                                                                                          addr902:
                                                                                                                                          this.§]3§ = §5!§;
                                                                                                                                          this.§;D§ = 0;
                                                                                                                                          addr906:
                                                                                                                                          addr891:
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             addr854:
                                                                                                                                             §§push(this.m_maxLength1);
                                                                                                                                             if(!(_loc28_ && param1))
                                                                                                                                             {
                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   this.m_limitState1 = §5!§;
                                                                                                                                                   addr876:
                                                                                                                                                   addr862:
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      this.m_limitImpulse1 = 0;
                                                                                                                                                      addr803:
                                                                                                                                                      addr847:
                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                      if(!_loc28_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.m_maxLength2);
                                                                                                                                                         if(!(_loc28_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc28_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr819:
                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     this.m_limitState2 = §5!§;
                                                                                                                                                                     addr780:
                                                                                                                                                                     this.m_limitImpulse2 = 0;
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc28_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc28_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr902);
                                                                                                                                                                              }
                                                                                                                                                                              addr907:
                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr910:
                                                                                                                                                                                 §§push(this.m_u1.y);
                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr929:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr918:
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * this.m_u1.x);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc21_:* = §§pop();
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    if(!(_loc28_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.m_u2.y);
                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc27_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr963:
                                                                                                                                                                                                §§push(§§pop() - §§pop() * this.m_u2.x);
                                                                                                                                                                                                if(_loc27_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                var _loc22_:* = §§pop();
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                   §§push(_loc2_.§=n§);
                                                                                                                                                                                                   if(_loc27_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc2_.§1&§);
                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc21_);
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1764:
                                                                                                                                                                                                            addr1765:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().m_limitMass1 = §§pop() + §§pop();
                                                                                                                                                                                                            addr1766:
                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                            §§push(_loc3_.§=n§);
                                                                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc3_.§1&§);
                                                                                                                                                                                                               if(_loc27_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1739:
                                                                                                                                                                                                                     addr1740:
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(_loc27_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().m_limitMass2 = §§pop() + §§pop();
                                                                                                                                                                                                                     addr1741:
                                                                                                                                                                                                                     §§push(this);
                                                                                                                                                                                                                     §§push(this.m_limitMass1);
                                                                                                                                                                                                                     if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§2Z§);
                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§2Z§);
                                                                                                                                                                                                                           if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1693:
                                                                                                                                                                                                                              addr1694:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(_loc27_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.m_limitMass2);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().§6D§ = §§pop() + §§pop();
                                                                                                                                                                                                                              this.m_limitMass1 = 1 / this.m_limitMass1;
                                                                                                                                                                                                                              this.m_limitMass2 = 1 / this.m_limitMass2;
                                                                                                                                                                                                                              this.§6D§ = 1 / this.§6D§;
                                                                                                                                                                                                                              addr1634:
                                                                                                                                                                                                                              addr1649:
                                                                                                                                                                                                                              addr1657:
                                                                                                                                                                                                                              if(_loc27_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(param1.§-K§)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1605:
                                                                                                                                                                                                                                    if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                                                                       §§push(this.§;D§);
                                                                                                                                                                                                                                       if(!(_loc28_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * param1.§&s§);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().§;D§ = §§pop();
                                                                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                                                                       §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * param1.§&s§);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().m_limitImpulse1 = §§pop();
                                                                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                                                                       §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * param1.§&s§);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().m_limitImpulse2 = §§pop();
                                                                                                                                                                                                                                       addr1567:
                                                                                                                                                                                                                                       _loc23_ = (-this.§;D§ - this.m_limitImpulse1) * this.m_u1.x;
                                                                                                                                                                                                                                       addr1600:
                                                                                                                                                                                                                                       addr1584:
                                                                                                                                                                                                                                       addr1559:
                                                                                                                                                                                                                                       addr1565:
                                                                                                                                                                                                                                       addr1562:
                                                                                                                                                                                                                                       addr1566:
                                                                                                                                                                                                                                       addr1561:
                                                                                                                                                                                                                                       addr1626:
                                                                                                                                                                                                                                       addr1568:
                                                                                                                                                                                                                                       addr1558:
                                                                                                                                                                                                                                       addr1564:
                                                                                                                                                                                                                                       §§push(this.§;D§);
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1520:
                                                                                                                                                                                                                                          §§push(-§§pop() - this.m_limitImpulse1);
                                                                                                                                                                                                                                          §§push(this.m_u1);
                                                                                                                                                                                                                                          if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1530:
                                                                                                                                                                                                                                             §§push(Number(§§pop() * §§pop().y));
                                                                                                                                                                                                                                             if(!(_loc28_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc24_ = §§pop();
                                                                                                                                                                                                                                                addr1540:
                                                                                                                                                                                                                                                if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§2Z§);
                                                                                                                                                                                                                                                      if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1467:
                                                                                                                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                                                                                                                            if(_loc27_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1477:
                                                                                                                                                                                                                                                               §§push(§§pop() * this.§;D§);
                                                                                                                                                                                                                                                               if(!_loc28_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1492:
                                                                                                                                                                                                                                                                  §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                  if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1491:
                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                     §§push(this.m_u2.x);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1497:
                                                                                                                                                                                                                                                                        §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                                                                                        if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc25_ = §§pop();
                                                                                                                                                                                                                                                                              addr1508:
                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§2Z§);
                                                                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                                                                          if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(this.§;D§);
                                                                                                                                                                                                                                                                                             if(_loc27_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1378:
                                                                                                                                                                                                                                                                                                         §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1382:
                                                                                                                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                               if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1392:
                                                                                                                                                                                                                                                                                                                  if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.m_u2);
                                                                                                                                                                                                                                                                                                                     if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1409:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                        if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc27_ || this)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1424:
                                                                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1443:
                                                                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             _loc26_ = §§pop();
                                                                                                                                                                                                                                                                                                                                             addr1446:
                                                                                                                                                                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1331:
                                                                                                                                                                                                                                                                                                                                                _loc2_.§4!h§.x += _loc2_.§=n§ * _loc23_;
                                                                                                                                                                                                                                                                                                                                                addr1330:
                                                                                                                                                                                                                                                                                                                                                addr1326:
                                                                                                                                                                                                                                                                                                                                                addr1325:
                                                                                                                                                                                                                                                                                                                                                addr1329:
                                                                                                                                                                                                                                                                                                                                                addr1328:
                                                                                                                                                                                                                                                                                                                                                addr1323:
                                                                                                                                                                                                                                                                                                                                                if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1290:
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc2_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1299:
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc2_.§4!h§.y);
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc2_.§=n§);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1307:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1311:
                                                                                                                                                                                                                                                                                                                                                               §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                               addr1310:
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc2_.§1&§);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc27_ || this)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                              if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1270:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1280:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop() * _loc23_);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1280);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr1283:
                                                                                                                                                                                                                                                                                                                                                                              §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                              addr1284:
                                                                                                                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1213:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1218:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc3_.§4!h§.x);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr1222:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_.§=n§ * _loc25_);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1227:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                             addr1235:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc3_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc3_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc3_.§=n§);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc26_);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1173:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1185:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc27_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1200:
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc3_.§1&§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc26_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1111:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1112:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr1099:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc27_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1107:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * _loc25_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc28_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1634);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr976);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1200);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1107);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1099);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1111);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1112);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1284);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1235);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1331);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1218);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1330);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1222);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1307);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1222);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1173);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1326);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1227);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1185);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1325);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1299);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1218);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1213);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1311);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1310);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1299);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1290);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1766);
                                                                                                                                                                                                                                                                                                                                                                              addr1282:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1280);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1270);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1282);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1283);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1508);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1329);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1328);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1311);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1323);
                                                                                                                                                                                                                                                                                                                                                   addr1339:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1600);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1584);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1497);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1559);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1567);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1467);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1477);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1443);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1530);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1491);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1497);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1424);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1565);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1409);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1392);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1477);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1492);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1382);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1378);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1562);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1491);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1378);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1649);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1566);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1520);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1561);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1520);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1530);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1491);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1626);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1568);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1558);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1564);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1530);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1741);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 this.§;D§ = 0;
                                                                                                                                                                                                                                 this.m_limitImpulse1 = 0;
                                                                                                                                                                                                                                 addr1017:
                                                                                                                                                                                                                                 if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc28_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc28_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.m_limitImpulse2 = 0;
                                                                                                                                                                                                                                                if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc27_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc28_ && param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1605);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr976:
                                                                                                                                                                                                                                                         return;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1540);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1331);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1017);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1657);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1446);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1311);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1111);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1054:
                                                                                                                                                                                                                                 §§goto(addr1054);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1695:
                                                                                                                                                                                                                              §§goto(addr1695);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1693);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1694);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1739);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1740);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1764);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1765);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1339);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr963);
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr963);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr929);
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr906);
                                                                                                                                                                        }
                                                                                                                                                                        addr833:
                                                                                                                                                                        if(_loc27_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr803);
                                                                                                                                                                           }
                                                                                                                                                                           addr886:
                                                                                                                                                                           §§goto(addr902);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr876);
                                                                                                                                                                     }
                                                                                                                                                                     addr825:
                                                                                                                                                                     §§goto(addr825);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr847);
                                                                                                                                                               }
                                                                                                                                                               this.m_limitState2 = §`7§;
                                                                                                                                                               if(_loc27_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc28_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(false)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr780);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr907);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr862);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr819);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr780);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr854);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr929);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr891);
                                                                                                                                                }
                                                                                                                                                this.m_limitState1 = §`7§;
                                                                                                                                                §§goto(addr833);
                                                                                                                                             }
                                                                                                                                             §§goto(addr901);
                                                                                                                                          }
                                                                                                                                          §§goto(addr910);
                                                                                                                                       }
                                                                                                                                       this.§]3§ = §`7§;
                                                                                                                                       §§goto(addr886);
                                                                                                                                    }
                                                                                                                                    §§goto(addr918);
                                                                                                                                 }
                                                                                                                                 §§goto(addr803);
                                                                                                                              }
                                                                                                                              addr742:
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!(_loc28_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr750:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              §§goto(addr751);
                                                                                                                           }
                                                                                                                           §§goto(addr750);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr661:
                                                                                                                        this.m_u2.§2p§(1 / _loc19_);
                                                                                                                        addr666:
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        if(_loc27_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§goto(addr711);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           loop14:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.m_u1);
                                                                                                                              addr705:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().§2p§(1 / _loc18_);
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr703:
                                                                                                                        }
                                                                                                                        addr659:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr666);
                                                                                                               }
                                                                                                               §§goto(addr661);
                                                                                                            }
                                                                                                            §§goto(addr659);
                                                                                                         }
                                                                                                         §§goto(addr742);
                                                                                                         §§push(§§pop() * _loc19_);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(this.§2Z§);
                                                                                                   if(!(_loc28_ && _loc2_))
                                                                                                   {
                                                                                                      §§goto(addr740);
                                                                                                   }
                                                                                                   §§goto(addr742);
                                                                                                }
                                                                                                addr690:
                                                                                             }
                                                                                             §§goto(addr705);
                                                                                          }
                                                                                          §§goto(addr703);
                                                                                       }
                                                                                       §§goto(addr740);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr690);
                                                                              }
                                                                              §§goto(addr576);
                                                                           }
                                                                           §§goto(addr588);
                                                                        }
                                                                        §§goto(addr543);
                                                                     }
                                                                     §§goto(addr588);
                                                                  }
                                                                  §§goto(addr557);
                                                               }
                                                               §§goto(addr503);
                                                            }
                                                            §§goto(addr394);
                                                            addr348:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr355:
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               addr356:
                                                               while(true)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr377);
                                                            }
                                                         }
                                                         addr354:
                                                      }
                                                      §§goto(addr351);
                                                   }
                                                   §§goto(addr346);
                                                }
                                             }
                                             §§goto(addr356);
                                          }
                                          §§goto(addr216);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc27_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc28_)
                                          {
                                             _loc6_ = §§pop();
                                             if(!_loc28_)
                                             {
                                                §§push(_loc7_);
                                                if(!(_loc28_ && _loc3_))
                                                {
                                                   §§goto(addr192);
                                                }
                                             }
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr193);
                                    }
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr115);
               }
            }
            §§goto(addr101);
         }
         §§goto(addr65);
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
         var _loc2_:b2Body = §-;§;
         var _loc3_:b2Body = §`x§;
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
         if(_loc21_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc21_)
            {
               addr80:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc4_.col1.x);
            if(_loc21_)
            {
               §§push(_loc5_);
               if(!_loc22_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc21_ || _loc3_)
                  {
                     §§push(_loc4_.col2.x);
                     if(!(_loc22_ && param1))
                     {
                        addr108:
                        §§push(§§pop() * _loc6_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc22_ && _loc2_)
                     {
                     }
                     addr119:
                     var _loc7_:* = §§pop();
                     if(_loc21_ || this)
                     {
                        §§push(_loc4_.col1.y);
                        if(_loc21_ || this)
                        {
                           §§push(_loc5_);
                           if(_loc21_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc22_)
                              {
                                 §§push(_loc4_.col2.y);
                                 if(_loc21_ || _loc2_)
                                 {
                                    addr155:
                                    §§push(§§pop() + §§pop() * _loc6_);
                                    if(!(_loc22_ && _loc2_))
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc22_ && _loc3_))
                                       {
                                          addr171:
                                          _loc6_ = §§pop();
                                          if(_loc21_)
                                          {
                                             addr174:
                                             §§push(_loc7_);
                                             if(_loc21_)
                                             {
                                                addr178:
                                                _loc5_ = Number(§§pop());
                                             }
                                             §§goto(addr178);
                                          }
                                          _loc4_ = _loc3_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(!(_loc22_ && this))
                                          {
                                             §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                             if(!_loc22_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(!(_loc22_ && _loc3_))
                                          {
                                             §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                             if(_loc21_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc9_:* = §§pop();
                                          if(!(_loc22_ && this))
                                          {
                                             §§push(_loc4_.col1);
                                             loop0:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr2282:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   addr2283:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr2284:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_.col2);
                                                         addr2286:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr2287:
                                                            while(true)
                                                            {
                                                               §§push(_loc9_);
                                                               addr2288:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr2289:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr2290:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr2291:
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
                                          §§goto(addr2012);
                                       }
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr119);
                  §§push(Number(§§pop()));
               }
               §§goto(addr108);
            }
            §§goto(addr119);
         }
         §§goto(addr80);
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
         var _loc2_:b2Body = §-;§;
         var _loc3_:b2Body = §`x§;
         §§push(this.§71§.m_xf.position.x);
         if(_loc26_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(_loc26_ || param1)
            {
               addr76:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.§71§.m_xf.position.y);
            if(!(_loc25_ && this))
            {
               §§push(§§pop() + this.m_groundAnchor1.y);
               if(!(_loc25_ && param1))
               {
                  addr101:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(this.§71§.m_xf.position.x);
               if(!(_loc25_ && _loc2_))
               {
                  §§push(§§pop() + this.m_groundAnchor2.x);
                  if(!(_loc25_ && this))
                  {
                     addr126:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(this.§71§.m_xf.position.y);
                  if(!(_loc25_ && _loc2_))
                  {
                     §§push(§§pop() + this.m_groundAnchor2.y);
                     if(!_loc25_)
                     {
                        addr146:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     §§push(0);
                     if(!(_loc25_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc24_:* = §§pop();
                     if(!_loc25_)
                     {
                        §§push(this.§]3§);
                        if(_loc26_)
                        {
                           if(§§pop() == §`7§)
                           {
                              if(_loc26_ || _loc2_)
                              {
                                 §§push(_loc2_.m_xf);
                                 if(!(_loc25_ && this))
                                 {
                                    §§push(§§pop().R);
                                    if(!(_loc25_ && _loc3_))
                                    {
                                       _loc4_ = §§pop();
                                       if(!(_loc25_ && param1))
                                       {
                                          §§push(this.m_localAnchor1);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr386:
                                             while(true)
                                             {
                                                §§push(_loc2_.m_sweep);
                                                addr388:
                                                while(true)
                                                {
                                                   §§push(§§pop().localCenter);
                                                   addr389:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr390:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr391:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr392:
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
                                       §§goto(addr305);
                                    }
                                    §§goto(addr1790);
                                 }
                                 §§goto(addr1787);
                              }
                              §§goto(addr2647);
                           }
                           §§goto(addr1764);
                        }
                        §§goto(addr2639);
                     }
                     §§goto(addr2647);
                  }
                  §§goto(addr146);
               }
               §§goto(addr126);
            }
            §§goto(addr101);
         }
         §§goto(addr76);
      }
   }
}
