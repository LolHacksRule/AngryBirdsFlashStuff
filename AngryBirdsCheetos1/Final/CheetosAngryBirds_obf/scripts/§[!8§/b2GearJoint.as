package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
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
      
      private var §"C§:b2Jacobian;
      
      private var §%!2§:Number;
      
      private var §%!3§:Number;
      
      private var §3!7§:Number;
      
      private var § !6§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(!(_loc6_ && _loc3_))
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               addr83:
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr49);
         }
         §§push(param1.joint1.§8!J§);
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.joint2.§8!J§);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc7_ || this)
         {
            this.m_revolute1 = null;
            loop7:
            while(true)
            {
               this.m_prismatic1 = null;
               addr553:
               while(true)
               {
                  this.m_revolute2 = null;
                  continue loop7;
               }
            }
         }
         §§goto(addr260);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::`p.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%^.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && this))
         {
            §§push(this.§ !6§);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§goto(addr79);
               }
               §§push(param1);
               if(_loc2_ || param1)
               {
                  §§push(this.§ !6§);
                  if(_loc2_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc2_)
                     {
                     }
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr79);
         }
         addr79:
         §§push(this.§"C§.§#'§.x);
         if(_loc2_)
         {
            §§push(§§pop() * §§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop() * this.§"C§.§#'§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Mat22 = b2internal::%^.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc8_)
         {
            §§push(§§pop() - b2internal::%^.m_sweep.localCenter.x);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc9_ && _loc2_))
         {
            §§push(§§pop() - b2internal::%^.m_sweep.localCenter.y);
            if(!(_loc9_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(!(_loc9_ && _loc3_))
         {
            §§push(_loc3_);
            if(_loc8_)
            {
               §§push(§§pop() * §§pop());
               if(_loc8_)
               {
                  §§push(_loc2_.col2.x);
                  if(!_loc9_)
                  {
                     addr80:
                     §§push(§§pop() * _loc4_);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_ && _loc2_)
                  {
                  }
                  addr91:
                  var _loc5_:* = §§pop();
                  if(_loc8_)
                  {
                     §§push(_loc2_.col1.y);
                     if(_loc8_ || _loc3_)
                     {
                        §§push(_loc3_);
                        if(_loc8_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc8_ || this)
                           {
                              §§push(_loc2_.col2.y);
                              if(!_loc9_)
                              {
                                 addr125:
                                 §§push(§§pop() * _loc4_);
                                 if(_loc8_ || param1)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc8_ || this)
                                       {
                                          addr155:
                                          _loc4_ = §§pop();
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             addr163:
                                             §§push(_loc5_);
                                             if(_loc8_ || param1)
                                             {
                                                addr171:
                                                §§push(Number(§§pop()));
                                                if(_loc8_)
                                                {
                                                   _loc3_ = §§pop();
                                                }
                                                addr187:
                                                var _loc6_:Number = §§pop();
                                                §§push(this.§ !6§);
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop() * this.§"C§.§#'§.y);
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      addr204:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc7_:* = §§pop();
                                                   §§push(param1);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(this.§ !6§);
                                                      if(_loc8_)
                                                      {
                                                         §§push(this.§"C§.§&!O§);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc8_ || this)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        addr245:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc9_)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   addr269:
                                                   §§push(_loc4_);
                                                   if(_loc8_ || this)
                                                   {
                                                      §§push(_loc6_);
                                                   }
                                                   return §§pop() * (§§pop() + §§pop());
                                                }
                                                §§goto(addr204);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§push(this.§ !6§);
                                          if(_loc8_)
                                          {
                                             addr183:
                                             §§push(§§pop() * this.§"C§.§#'§.x);
                                             if(_loc8_)
                                             {
                                                §§goto(addr187);
                                             }
                                          }
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr155);
                                 }
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr163);
               }
               §§goto(addr91);
               §§push(Number(§§pop()));
            }
            §§goto(addr80);
         }
         §§goto(addr91);
      }
      
      public function §9@§() : Number
      {
         return this.§%!3§;
      }
      
      public function §9`§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%!3§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
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
         _loc4_ = b2internal::`p;
         var _loc5_:b2Body = b2internal::%^;
         §§push(0);
         if(_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(!(_loc16_ && this))
         {
            §§push(this.§"C§);
            loop0:
            while(true)
            {
               §§pop().§3a§();
               if(_loc15_)
               {
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(_loc15_ || _loc2_)
                        {
                           §§push(§§pop().R);
                           if(_loc15_)
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§7!"§;
                              if(!(_loc16_ && _loc2_))
                              {
                                 §§push(_loc10_.col1);
                                 if(_loc15_ || this)
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc16_ && _loc2_))
                                    {
                                       §§push(_loc11_.x);
                                       if(!(_loc16_ && _loc3_))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             §§push(_loc10_.col2);
                                             if(_loc15_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc15_)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc15_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc16_ && _loc3_))
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(_loc15_ || this)
                                                               {
                                                                  addr227:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(_loc15_ || _loc2_)
                                                                  {
                                                                     addr235:
                                                                     §§push(_loc11_.x);
                                                                     if(!(_loc16_ && param1))
                                                                     {
                                                                        addr244:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc16_)
                                                                        {
                                                                        }
                                                                        addr269:
                                                                        _loc7_ = §§pop();
                                                                        _loc10_ = _loc4_.m_xf.R;
                                                                        if(_loc15_ || param1)
                                                                        {
                                                                           §§push(this.m_localAnchor1);
                                                                           loop40:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr634:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.m_sweep);
                                                                                 addr636:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().localCenter);
                                                                                    addr637:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr638:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          addr639:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr640:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                continue loop40;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr574);
                                                                     }
                                                                     addr260:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc16_ && _loc3_))
                                                                     {
                                                                        §§goto(addr269);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                            addr249:
                                                            §§push(_loc10_.col2.y);
                                                            if(_loc15_ || param1)
                                                            {
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      §§push(_loc11_.y);
                                                   }
                                                   §§goto(addr235);
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§goto(addr244);
                                             }
                                             §§goto(addr249);
                                          }
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr244);
                           }
                           addr710:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§7!"§;
                           if(!(_loc16_ && this))
                           {
                              §§push(_loc10_.col1);
                              if(_loc15_ || _loc3_)
                              {
                                 §§push(§§pop().x);
                                 if(_loc15_)
                                 {
                                    §§push(_loc11_.x);
                                    if(!(_loc16_ && this))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc15_ || param1)
                                       {
                                          §§push(_loc10_.col2);
                                          if(!(_loc16_ && _loc2_))
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc16_)
                                             {
                                                §§push(_loc11_.y);
                                                if(_loc15_ || _loc2_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc15_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc16_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(_loc15_)
                                                            {
                                                               addr798:
                                                               §§push(_loc10_.col1.y);
                                                               if(!(_loc16_ && param1))
                                                               {
                                                                  addr806:
                                                                  §§push(_loc11_.x);
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr820:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr825:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc15_)
                                                                        {
                                                                           addr831:
                                                                           §§push(§§pop() + §§pop() * _loc11_.y);
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr834:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr831);
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     addr836:
                                                                     _loc10_ = _loc5_.m_xf.R;
                                                                     if(_loc15_)
                                                                     {
                                                                        §§push(this.m_localAnchor2);
                                                                        loop84:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr1234:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.m_sweep);
                                                                              addr1236:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().localCenter);
                                                                                 addr1237:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr1238:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr1239:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr1240:
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
                                                                     }
                                                                     §§goto(addr1171);
                                                                  }
                                                                  §§goto(addr831);
                                                               }
                                                               §§goto(addr834);
                                                            }
                                                            §§goto(addr836);
                                                         }
                                                      }
                                                      §§goto(addr806);
                                                   }
                                                   §§goto(addr820);
                                                }
                                             }
                                             §§goto(addr831);
                                          }
                                          §§goto(addr825);
                                       }
                                       §§goto(addr834);
                                    }
                                    §§goto(addr831);
                                 }
                                 §§goto(addr825);
                              }
                           }
                           §§goto(addr798);
                        }
                        break;
                     }
                     if(_loc15_ || this)
                     {
                        §§push(this.§"C§);
                        if(!_loc16_)
                        {
                           if(_loc16_)
                           {
                              continue loop0;
                           }
                           §§pop().§@<§ = -1;
                           while(true)
                           {
                              §§push(_loc14_);
                              if(!(_loc16_ && _loc2_))
                              {
                                 §§push(_loc4_.§?8§);
                                 if(!(_loc16_ && _loc2_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc16_ && _loc2_))
                                    {
                                       addr90:
                                       §§push(Number(§§pop()));
                                       if(!_loc16_)
                                       {
                                          _loc14_ = §§pop();
                                          if(!_loc15_)
                                          {
                                             §§push(_loc14_);
                                             if(!(_loc16_ && _loc3_))
                                             {
                                                §§push(this.§%!3§);
                                                if(_loc15_ || _loc2_)
                                                {
                                                   §§push(this.§%!3§);
                                                   if(!_loc16_)
                                                   {
                                                      addr694:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc15_ || this)
                                                      {
                                                         addr691:
                                                         §§push(_loc5_.§?8§);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc16_)
                                                      {
                                                         break;
                                                      }
                                                      _loc14_ = §§pop();
                                                      if(_loc15_ || _loc2_)
                                                      {
                                                         addr1242:
                                                         §§push(this);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(_loc14_);
                                                            if(_loc15_ || param1)
                                                            {
                                                               if(§§pop() > 0)
                                                               {
                                                                  addr1256:
                                                                  §§push(1 / _loc14_);
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc16_ && _loc2_)
                                                                     {
                                                                     }
                                                                     addr1279:
                                                                     §§pop().§3!7§ = §§pop();
                                                                     if(_loc15_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     loop37:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        §§push(_loc5_.m_angularVelocity);
                                                                        if(!(_loc16_ && param1))
                                                                        {
                                                                           §§push(_loc5_.§?8§);
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§push(this.§ !6§);
                                                                              if(_loc15_ || _loc2_)
                                                                              {
                                                                                 addr1338:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc15_ || this)
                                                                                 {
                                                                                    §§push(this.§"C§.§&!O§);
                                                                                 }
                                                                                 §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                 while(!_loc15_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                continue loop37;
                                                                                             }
                                                                                             addr1614:
                                                                                             loop38:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                §§push(_loc4_.m_angularVelocity);
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   §§push(_loc4_.§?8§);
                                                                                                   if(!(_loc16_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(this.§ !6§);
                                                                                                      if(_loc15_ || _loc3_)
                                                                                                      {
                                                                                                         addr1549:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc16_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(this.§"C§.§@<§);
                                                                                                         }
                                                                                                         §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc16_ && this))
                                                                                                            {
                                                                                                               if(!(_loc16_ && _loc2_))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.§,?§);
                                                                                                                     loop6:
                                                                                                                     for(; _loc15_; while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.§,?§);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        §§push(_loc5_.§,?§);
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           if(_loc15_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 if(!(_loc16_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.§#!D§);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§ !6§);
                                                                                                                                                if(_loc15_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1394);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1506);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1453);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1509);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1411);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_.§#!D§);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc16_ && param1))
                                                                                                                                             {
                                                                                                                                                §§goto(addr1586);
                                                                                                                                                §§push(this.§ !6§);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1625);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1589);
                                                                                                                                       }
                                                                                                                                       addr1573:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1604);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1510);
                                                                                                                              }
                                                                                                                              §§goto(addr1454);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr1573);
                                                                                                                           }
                                                                                                                           addr1572:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr1476);
                                                                                                                        }
                                                                                                                        §§goto(addr1623);
                                                                                                                     },§§goto(addr1461))
                                                                                                                     {
                                                                                                                        §§push(_loc5_.§,?§);
                                                                                                                        while(!(_loc16_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           loop8:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_.§#!D§);
                                                                                                                              loop9:
                                                                                                                              while(_loc15_)
                                                                                                                              {
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§ !6§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc16_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§"C§);
                                                                                                                                             addr1502:
                                                                                                                                             addr1640:
                                                                                                                                             while(!_loc16_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§#'§);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   addr1506:
                                                                                                                                                   while(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         addr1510:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            continue loop6;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1602:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      break loop9;
                                                                                                                                                   }
                                                                                                                                                   addr1443:
                                                                                                                                                   §§push(§§pop().§#'§);
                                                                                                                                                   if(!(_loc16_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr1453:
                                                                                                                                                      §§push(§§pop() + §§pop() * §§pop().y);
                                                                                                                                                      continue loop8;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§push(§§pop().§<%§);
                                                                                                                                             addr1641:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                addr1642:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   addr1643:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr1644:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         addr1645:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_.§,?§);
                                                                                                                                                            break loop6;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1500:
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                       addr1394:
                                                                                                                                       if(_loc16_ && this)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc15_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             addr1411:
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc15_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   continue loop9;
                                                                                                                                                }
                                                                                                                                                if(!(_loc16_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§"C§);
                                                                                                                                                   if(!(_loc16_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc16_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1443);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().§<%§);
                                                                                                                                                         if(_loc15_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1602);
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1641);
                                                                                                                                                      }
                                                                                                                                                      addr1593:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1502);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1505);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1643);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr1500);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1453);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             addr1589:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1593);
                                                                                                                                                   §§push(this.§"C§);
                                                                                                                                                }
                                                                                                                                                addr1638:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1640);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr1589:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1642);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr1637:
                                                                                                                                    §§goto(addr1638);
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                 }
                                                                                                                                 §§goto(addr1589);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr1604:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          addr1613:
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          continue loop38;
                                                                                                                                       }
                                                                                                                                       addr1623:
                                                                                                                                       addr1623:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_.§#!D§);
                                                                                                                                          addr1625:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1637);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1644);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1623);
                                                                                                                        §§push(§§pop().x);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           §§goto(addr1572);
                                                                                                                           §§push(_loc4_.§,?§);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr1622);
                                                                                                                           }
                                                                                                                           addr1620:
                                                                                                                        }
                                                                                                                        §§goto(addr1623);
                                                                                                                        §§goto(addr1645);
                                                                                                                     }
                                                                                                                     §§goto(addr1613);
                                                                                                                  }
                                                                                                                  addr1564:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr1618:
                                                                                                               }
                                                                                                               §§goto(addr1620);
                                                                                                            }
                                                                                                            §§goto(addr1645);
                                                                                                            §§goto(addr1549);
                                                                                                         }
                                                                                                         addr1550:
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1549);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1550);
                                                                                       }
                                                                                       §§goto(addr1511);
                                                                                    }
                                                                                    continue loop37;
                                                                                    §§goto(addr1338);
                                                                                 }
                                                                                 addr1283:
                                                                                 return;
                                                                                 addr1341:
                                                                                 addr1339:
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr1338);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(0);
                                                                  if(_loc15_)
                                                                  {
                                                                     addr1278:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr1279);
                                                            }
                                                            §§goto(addr1278);
                                                         }
                                                         §§goto(addr1256);
                                                      }
                                                      §§goto(addr1614);
                                                   }
                                                   §§goto(addr694);
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§goto(addr691);
                                             }
                                          }
                                          else
                                          {
                                             addr662:
                                          }
                                          continue;
                                          break;
                                       }
                                       break;
                                    }
                                 }
                                 §§goto(addr694);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr694);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr649);
                     }
                     §§goto(addr1564);
                     §§goto(addr1242);
                  }
                  §§goto(addr710);
                  §§push(§§pop().R);
               }
               break;
            }
            if(!param1.§5!N§)
            {
               this.§ !6§ = 0;
               if(_loc15_ || _loc3_)
               {
                  §§goto(addr1300);
               }
               else
               {
                  §§goto(addr1339);
               }
            }
            §§goto(addr1618);
         }
         §§goto(addr103);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = b2internal::`p;
         var _loc3_:b2Body = b2internal::%^;
         §§push(this.§"C§.§,I§(_loc2_.§,?§,_loc2_.m_angularVelocity,_loc3_.§,?§,_loc3_.m_angularVelocity));
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§3!7§);
         if(!_loc6_)
         {
            §§push(-§§pop());
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() * _loc4_);
               if(!_loc6_)
               {
                  addr54:
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && _loc3_))
            {
               §§push(this);
               §§push(this.§ !6§);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§ !6§ = §§pop();
               while(true)
               {
                  §§push(_loc2_.§,?§);
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.§,?§);
                     addr348:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr349:
                        while(true)
                        {
                           §§push(_loc2_.§#!D§);
                           if(!(_loc6_ && this))
                           {
                              §§push(_loc5_);
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc6_ && this))
                                 {
                                    addr367:
                                    while(true)
                                    {
                                       §§push(this.§"C§);
                                       addr369:
                                       while(true)
                                       {
                                          §§push(§§pop().§<%§);
                                          addr370:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr371:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                       }
                                    }
                                    addr367:
                                 }
                                 addr372:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr373:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       addr374:
                                       while(true)
                                       {
                                          §§push(_loc2_.§,?§);
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              addr359:
                           }
                           §§goto(addr367);
                        }
                     }
                  }
               }
            }
            §§goto(addr106);
         }
         §§goto(addr54);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         §§push(0);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::`p;
         var _loc4_:b2Body = b2internal::%^;
         if(_loc10_)
         {
            §§push(this.m_revolute1);
            if(_loc10_)
            {
               if(!§§pop())
               {
                  §§push(this.m_prismatic1.§,1§());
                  if(_loc10_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
                  loop0:
                  while(true)
                  {
                     if(_loc10_)
                     {
                        _loc5_ = §§pop();
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(this.m_revolute2);
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc10_ || _loc3_)
                                       {
                                          addr94:
                                          §§push(this.m_revolute2.§?_§());
                                          if(!_loc9_)
                                          {
                                             addr98:
                                             _loc6_ = §§pop();
                                          }
                                          §§goto(addr98);
                                       }
                                       addr99:
                                       if(_loc10_ || _loc2_)
                                       {
                                          break;
                                       }
                                       addr137:
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.m_prismatic2.§,1§());
                                       if(_loc10_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc9_)
                                          {
                                             addr51:
                                             if(_loc10_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr98);
                                          }
                                          addr166:
                                          var _loc7_:* = §§pop();
                                          §§push(this.§3!7§);
                                          if(!_loc9_)
                                          {
                                             §§push(-§§pop());
                                             if(!_loc9_)
                                             {
                                                addr174:
                                                §§push(§§pop() * _loc7_);
                                                if(!_loc9_)
                                                {
                                                   addr178:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc8_:* = §§pop();
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   §§push(_loc3_.m_sweep);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().c);
                                                      addr584:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.m_sweep);
                                                         addr586:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().c);
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.§#!D§);
                                                                  addr590:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§"C§);
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§<%§);
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_.m_sweep);
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().c);
                                                                                                addr534:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.m_sweep);
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().c);
                                                                                                      addr537:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         loop26:
                                                                                                         while(!_loc9_)
                                                                                                         {
                                                                                                            §§push(_loc3_.§#!D§);
                                                                                                            loop27:
                                                                                                            for(; !(_loc9_ && param1); if(!(_loc10_ || _loc2_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            },§§push(§§pop() + §§pop()),if(_loc10_)
                                                                                                            {
                                                                                                               §§goto(addr435);
                                                                                                            },§§goto(addr502))
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  if(_loc9_ && param1)
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§"C§);
                                                                                                                     addr564:
                                                                                                                     while(!(_loc9_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop().§<%§);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        §§push(§§pop().y);
                                                                                                                     }
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  addr562:
                                                                                                               }
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr576:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     loop32:
                                                                                                                     while(!_loc9_)
                                                                                                                     {
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.m_sweep);
                                                                                                                           loop34:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.m_sweep);
                                                                                                                              addr511:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().a);
                                                                                                                                 addr512:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.§?8§);
                                                                                                                                    if(_loc10_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr523:
                                                                                                                                          addr284:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§"C§);
                                                                                                                                             addr525:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§@<§);
                                                                                                                                                addr526:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          if(!(_loc10_ || param1))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc9_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr310:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!(_loc9_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§pop().a = §§pop();
                                                                                                                                                loop59:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc10_ || this))
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      _loc3_.§=!Y§();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         continue loop59;
                                                                                                                                                      }
                                                                                                                                                      while(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                         }
                                                                                                                                                         return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.m_sweep);
                                                                                                                                                         addr454:
                                                                                                                                                         loop44:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            addr455:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.m_sweep);
                                                                                                                                                               addr457:
                                                                                                                                                               while(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                  while(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     while(!(_loc9_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.§#!D§);
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              loop49:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§"C§);
                                                                                                                                                                                 addr485:
                                                                                                                                                                                 while(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().§#'§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       addr489:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc9_ && _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   §§goto(addr503);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr502:
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr562);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr413:
                                                                                                                                                                                       §§push(§§pop().§#'§);
                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                       if(!(_loc9_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr423:
                                                                                                                                                                                          §§push(§§pop() * §§pop().y);
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop49;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr564);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr489);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr499);
                                                                                                                                                                        if(_loc10_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                              addr450:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_.m_sweep);
                                                                                                                                                                                 if(_loc10_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop44;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop34;
                                                                                                                                                                              addr450:
                                                                                                                                                                           }
                                                                                                                                                                           continue loop32;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop26;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop11;
                                                                                                                                                               }
                                                                                                                                                               continue loop24;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr503:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr450);
                                                                                                                                                   }
                                                                                                                                                   while(_loc10_ || param1)
                                                                                                                                                   {
                                                                                                                                                      continue loop8;
                                                                                                                                                      §§goto(addr450);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr454);
                                                                                                                                                }
                                                                                                                                                continue loop21;
                                                                                                                                             }
                                                                                                                                             addr528:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop().a = §§pop();
                                                                                                                                             }
                                                                                                                                             addr528:
                                                                                                                                             §§goto(addr529);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr523);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr527:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr528);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(_loc9_ && param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr208);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         continue loop12;
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
                                                   }
                                                }
                                                §§goto(addr505);
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr51);
                                    }
                                    §§goto(addr98);
                                 }
                                 §§goto(addr94);
                              }
                              addr138:
                              §§push(this.§%!2§);
                              if(_loc10_)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    §§push(this.§%!3§);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr166);
                              addr74:
                              addr106:
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.m_revolute1);
                                 addr134:
                                 while(true)
                                 {
                                    §§push(§§pop().§?_§());
                                    addr135:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr136:
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                       }
                                    }
                                 }
                              }
                              addr132:
                           }
                           §§goto(addr137);
                           addr65:
                           if(!(_loc10_ || _loc3_))
                           {
                              continue;
                           }
                           if(false)
                           {
                              §§goto(addr74);
                           }
                           §§goto(addr138);
                        }
                     }
                     §§goto(addr135);
                  }
               }
               §§goto(addr132);
            }
            §§goto(addr134);
         }
         §§goto(addr106);
      }
   }
}
