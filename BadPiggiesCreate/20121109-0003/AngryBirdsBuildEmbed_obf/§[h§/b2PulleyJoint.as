package §[h§
{
   import § !t§.b2Body;
   import § !t§.b2TimeStep;
   import §<!B§.b2Mat22;
   import §<!B§.b2Math;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §#t§:Number = 2.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#t§ = 2;
         }
      }
      
      private var §"<§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §8U§:Number;
      
      private var §>!P§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §4!I§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §7!a§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §<!O§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         if(!_loc6_)
         {
            this.m_groundAnchor2 = new b2Vec2();
            if(!(_loc6_ && param1))
            {
               this.m_localAnchor1 = new b2Vec2();
               if(!(_loc6_ && param1))
               {
                  this.m_localAnchor2 = new b2Vec2();
                  if(!(_loc6_ && _loc3_))
                  {
                     this.m_u1 = new b2Vec2();
                     if(!_loc6_)
                     {
                        this.m_u2 = new b2Vec2();
                        if(_loc5_ || param1)
                        {
                           super(param1);
                           if(_loc5_)
                           {
                              addr84:
                              this.§"<§ = b2internal::2+.m_world.m_groundBody;
                              if(!_loc6_)
                              {
                                 §§push(this.m_groundAnchor1);
                                 if(!_loc6_)
                                 {
                                    §§push(param1.§5!W§);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc5_)
                                       {
                                          §§push(this.§"<§);
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§push(§§pop().m_xf);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§push(§§pop().position);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         addr143:
                                                         §§push(this.m_groundAnchor1);
                                                         §§push(param1.§5!W§.y);
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            addr156:
                                                            §§push(§§pop() - this.§"<§.m_xf.position.y);
                                                         }
                                                      }
                                                      §§pop().y = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         §§push(this.m_groundAnchor2);
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§push(param1.§3=§);
                                                            if(_loc5_ || param1)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(this.§"<§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop().m_xf);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§push(§§pop().position);
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr222);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                               addr222:
                                                               §§pop().x = §§pop();
                                                               §§goto(addr227);
                                                            }
                                                            addr227:
                                                            §§goto(addr225);
                                                         }
                                                         addr225:
                                                         §§push(this.m_groundAnchor2);
                                                         §§push(param1.§3=§.y);
                                                         if(_loc5_)
                                                         {
                                                            addr230:
                                                            §§push(§§pop() - this.§"<§.m_xf.position.y);
                                                         }
                                                         §§pop().y = §§pop();
                                                         this.m_localAnchor1.SetV(param1.§;!1§);
                                                         this.m_localAnchor2.SetV(param1.§%?§);
                                                         this.§>!P§ = param1.§6?§;
                                                         if(!_loc6_)
                                                         {
                                                            addr253:
                                                            §§push(this);
                                                            §§push(param1.§%;§);
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               §§push(this.§>!P§);
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() * param1.§9!J§);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().§8U§ = §§pop();
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               §§push(this);
                                                               §§push(b2Math);
                                                               §§push(param1.§#!B§);
                                                               §§push(this.§8U§);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(this.§>!P§);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop() * b2internal::#t);
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                               §§pop().m_maxLength1 = §§pop().§5!>§(§§pop(),§§pop());
                                                               addr306:
                                                               §§push(this);
                                                               §§push(b2Math);
                                                               §§push(param1.§-e§);
                                                               §§push(this.§8U§);
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(b2internal::#t);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§goto(addr348);
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                         }
                                                         addr348:
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            §§push(this.§>!P§);
                                                         }
                                                         §§pop().m_maxLength2 = §§pop().§5!>§(§§pop(),§§pop());
                                                         this.§7!a§ = 0;
                                                         this.m_limitImpulse1 = 0;
                                                         this.m_limitImpulse2 = 0;
                                                         return;
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr156);
                                    }
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr306);
                     }
                     §§goto(addr143);
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr253);
         }
         §§goto(addr84);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2+.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4P.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || this)
         {
            §§push(this.§7!a§);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || this)
               {
                  addr63:
                  §§push(this.m_u2.x);
                  if(_loc3_)
                  {
                     §§goto(addr69);
                  }
                  §§goto(addr72);
               }
               addr69:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_)
               {
                  addr72:
                  §§push(this.§7!a§);
                  if(!_loc2_)
                  {
                     §§goto(addr88);
                  }
                  §§push(§§pop() * §§pop());
               }
               addr88:
               §§push(§§pop() * §§pop());
               if(_loc3_ || _loc2_)
               {
                  addr84:
                  §§push(this.m_u2.y);
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
            §§goto(addr84);
         }
         §§goto(addr63);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §!l§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§"<§.m_xf.position.Copy();
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.§!a§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §,! §() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§"<§.m_xf.position.Copy();
         if(_loc3_ || _loc2_)
         {
            _loc1_.§!a§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::2+.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§"<§.m_xf.position.x);
         if(_loc7_ || _loc3_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(_loc7_ || _loc2_)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§"<§.m_xf.position.y);
            if(_loc7_ || _loc1_)
            {
               §§push(§§pop() + this.m_groundAnchor1.y);
               if(_loc7_ || this)
               {
                  addr81:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.x);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() - _loc2_);
                  if(_loc7_)
                  {
                     addr106:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(_loc1_.y);
                  if(!_loc6_)
                  {
                     §§push(§§pop() - _loc3_);
                     if(_loc7_ || this)
                     {
                        addr121:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                  }
                  §§goto(addr121);
               }
               §§goto(addr106);
            }
            §§goto(addr81);
         }
         §§goto(addr46);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::4P.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§"<§.m_xf.position.x);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(!(_loc7_ && this))
            {
               addr45:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§"<§.m_xf.position.y);
            if(!_loc7_)
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(_loc6_)
            {
               §§push(§§pop() - _loc2_);
               if(_loc6_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(_loc6_ || _loc1_)
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
         §§goto(addr45);
      }
      
      public function § E§() : Number
      {
         return this.§>!P§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1367
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
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
          * Timeout (1 minute) was reached
          * Instruction count: 2572
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
