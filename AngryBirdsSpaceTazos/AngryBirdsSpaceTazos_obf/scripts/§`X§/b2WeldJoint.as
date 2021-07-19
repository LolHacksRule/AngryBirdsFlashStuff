package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Mat22;
   import §9t§.b2Mat33;
   import §9t§.b2Math;
   import §9t§.b2Vec2;
   import §9t§.b2Vec3;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §&!K§:b2Vec2;
      
      private var §%K§:b2Vec2;
      
      private var §&d§:Number;
      
      private var §0"3§:b2Vec3;
      
      private var §""$§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§&!K§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§%K§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§0"3§ = new b2Vec3();
                  continue loop0;
                  addr54:
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  this.§""$§ = new b2Mat33();
                  addr61:
                  if(_loc2_)
                  {
                     addr35:
                     if(!(_loc2_ || _loc2_))
                     {
                        loop7:
                        while(true)
                        {
                           if(!(_loc3_ && this))
                           {
                              this.§0"3§.§@!d§();
                              while(true)
                              {
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          this.§%K§.SetV(param1.§@W§);
                                       }
                                       else
                                       {
                                          while(_loc2_ || this)
                                          {
                                             this.§&!K§.SetV(param1.§!8§);
                                             continue loop5;
                                          }
                                          while(true)
                                          {
                                             super(param1);
                                             §§goto(addr107);
                                          }
                                          addr107:
                                          addr120:
                                       }
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr54);
                                 §§goto(addr61);
                              }
                              continue loop1;
                              addr47:
                           }
                           while(true)
                           {
                              this.§&d§ = param1.§+!L§;
                              continue loop7;
                           }
                        }
                     }
                     return;
                     addr42:
                  }
                  §§goto(addr47);
               }
            }
         }
         §§goto(addr42);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::<!1.GetWorldPoint(this.§&!K§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?H.GetWorldPoint(this.§%K§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || this)
         {
            §§push(this.§0"3§.x);
            if(_loc3_)
            {
               §§goto(addr42);
            }
            §§goto(addr60);
         }
         addr42:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc3_ || this)
         {
            addr60:
            §§push(§§pop() * this.§0"3§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            return §§pop() * this.§0"3§.z;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::<!1;
         var _loc5_:b2Body = b2internal::?H;
         var _loc6_:b2Vec2 = _loc4_.§?o§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§?o§;
         §§push(_loc5_.m_angularVelocity);
         if(!_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§6!W§);
         if(!_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§6!W§);
         if(!_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§<!%§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§<!%§);
         if(!_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§&!K§.x);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc23_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§&!K§.y);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(!(_loc22_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc15_:* = §§pop();
         if(!_loc22_)
         {
            §§push(_loc2_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               if(_loc23_)
               {
                  §§push(_loc14_);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc22_)
                     {
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           addr224:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr225:
                              while(true)
                              {
                                 §§push(_loc15_);
                                 addr226:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr227:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                    }
                                 }
                              }
                           }
                        }
                        addr222:
                     }
                     addr228:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr229:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr230:
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  addr219:
               }
               §§goto(addr222);
            }
         }
         §§goto(addr144);
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
