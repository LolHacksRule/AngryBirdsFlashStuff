package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2internal;
   import §;%§.b2Mat22;
   import §;%§.b2Math;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §=!&§:b2Vec2;
      
      private var §6d§:b2Vec2;
      
      public var §2!`§:b2Mat22;
      
      public var §!!l§:Number;
      
      private var §^G§:b2Vec2;
      
      private var §<!d§:Number;
      
      private var §-!K§:Number;
      
      private var §9_§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§=!&§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§6d§ = new b2Vec2();
               addr180:
               while(true)
               {
                  this.§2!`§ = new b2Mat22();
                  while(true)
                  {
                     this.§^G§ = new b2Vec2();
                     continue loop0;
                     addr35:
                     if(!(_loc3_ && this))
                     {
                        return;
                        addr42:
                     }
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::>0.GetWorldPoint(this.§=!&§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.§6d§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§^G§.x);
            if(!_loc3_)
            {
               addr36:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop() * this.§^G§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr36);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            return §§pop() * this.§<!d§;
         }
      }
      
      public function §>T§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§-!K§ = param1;
         }
      }
      
      public function §9D§() : Number
      {
         return this.§-!K§;
      }
      
      public function §[G§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§9_§ = param1;
         }
      }
      
      public function §+!t§() : Number
      {
         return this.§9_§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = b2internal::>0;
         _loc5_ = b2internal::[=;
         _loc2_ = _loc4_.m_xf.R;
         if(!(_loc16_ && this))
         {
            §§push(this.§=!&§);
            if(!(_loc16_ && _loc3_))
            {
               §§push(§§pop().x);
               if(_loc17_ || _loc3_)
               {
                  §§push(_loc4_.m_sweep);
                  if(_loc17_ || _loc2_)
                  {
                     §§push(§§pop().localCenter);
                     if(!(_loc16_ && _loc2_))
                     {
                        §§push(§§pop().x);
                        if(_loc17_ || param1)
                        {
                           §§push(§§pop() - §§pop());
                           if(!(_loc16_ && this))
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc16_ && this))
                              {
                                 _loc6_ = §§pop();
                                 addr123:
                                 addr121:
                                 §§push(this.§=!&§.y);
                                 if(!_loc17_)
                                 {
                                 }
                                 addr134:
                                 var _loc7_:* = §§pop();
                                 if(_loc17_)
                                 {
                                    §§push(_loc2_.col1);
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc17_)
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             §§push(§§pop() * §§pop());
                                             while(true)
                                             {
                                                §§push(_loc2_.col2);
                                                addr259:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                }
                                             }
                                             addr257:
                                          }
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             addr261:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr262:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr263:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                             }
                                          }
                                          addr260:
                                       }
                                       addr264:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr265:
                                          while(true)
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr242);
                              }
                              addr129:
                              §§push(_loc4_.m_sweep.localCenter.y);
                           }
                           §§goto(addr134);
                        }
                        §§push(§§pop() - §§pop());
                        if(!_loc16_)
                        {
                           §§goto(addr134);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr129);
               }
               §§goto(addr134);
            }
            §§goto(addr123);
         }
         §§goto(addr121);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::>0;
         var _loc5_:b2Body = b2internal::[=;
         var _loc6_:b2Vec2 = _loc4_.§%!V§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc26_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§%!V§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§-7§);
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§-7§);
         if(_loc26_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§,!o§);
         if(_loc26_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§,!o§);
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§=!&§.x);
         if(!(_loc27_ && _loc3_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc26_ || _loc2_)
            {
               addr115:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§=!&§.y);
            if(_loc26_ || _loc3_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!_loc27_)
               {
                  addr134:
                  §§push(Number(§§pop()));
               }
               var _loc15_:* = §§pop();
               if(!(_loc27_ && _loc2_))
               {
                  §§push(_loc2_.col1);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().x);
                     if(!_loc27_)
                     {
                        §§push(_loc14_);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc27_ && _loc2_))
                           {
                              §§push(_loc2_.col2);
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr281:
                                 while(true)
                                 {
                                    §§push(_loc15_);
                                    addr282:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr283:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          addr284:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                    }
                                 }
                                 addr204:
                                 §§push(_loc2_.col2);
                                 if(_loc27_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop().y);
                                 if(!(_loc27_ && _loc3_))
                                 {
                                    addr221:
                                    §§push(_loc15_);
                                    if(!(_loc27_ && param1))
                                    {
                                       addr230:
                                       §§push(§§pop() * §§pop());
                                       if(_loc26_ || _loc3_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr282);
                                    }
                                    §§goto(addr283);
                                 }
                                 §§goto(addr230);
                              }
                           }
                           addr285:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr286:
                              while(true)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr284);
                  }
               }
               §§goto(addr173);
            }
            §§goto(addr134);
         }
         §§goto(addr115);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
