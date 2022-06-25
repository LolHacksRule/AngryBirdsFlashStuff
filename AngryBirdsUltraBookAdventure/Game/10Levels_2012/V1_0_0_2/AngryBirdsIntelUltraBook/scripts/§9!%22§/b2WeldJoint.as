package §9!"§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Mat33;
   import §>H§.b2Math;
   import §>H§.b2Vec2;
   import §>H§.b2Vec3;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §4!'§:b2Vec2;
      
      private var §^6§:b2Vec2;
      
      private var §2!l§:Number;
      
      private var §,!2§:b2Vec3;
      
      private var §,0§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4!'§ = new b2Vec2();
            while(true)
            {
               this.§^6§ = new b2Vec2();
               while(!(_loc2_ && param1))
               {
                  this.§,0§ = new b2Mat33();
                  loop3:
                  for(; !(_loc2_ && param1); if(_loc2_ && _loc3_)
                  {
                     continue;
                  },this.§^6§.SetV(param1.§%!e§),loop6:
                  while(_loc3_)
                  {
                     this.§2!l§ = param1.§-!Y§;
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           addr51:
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop6;
                     }
                     while(true)
                     {
                        this.§,!2§ = new b2Vec3();
                        break loop3;
                        §§goto(addr51);
                     }
                  },§§goto(addr84))
                  {
                     super(param1);
                     loop4:
                     while(true)
                     {
                        this.§4!'§.SetV(param1.§<?§);
                        addr84:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6!G.GetWorldPoint(this.§4!'§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.§^6§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§,!2§.x);
            if(_loc3_)
            {
               addr37:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_ || this)
               {
                  §§push(§§pop() * this.§,!2§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!(_loc2_ && _loc3_))
         {
            return §§pop() * this.§,!2§.z;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = b2internal::6!G;
         var _loc5_:b2Body = b2internal::0!w;
         var _loc6_:b2Vec2 = _loc4_.§^O§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc22_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§^O§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc22_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§7n§);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§7n§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§;5§);
         if(!(_loc23_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§;5§);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§4!'§.x);
         if(!_loc23_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§4!'§.y);
         if(!(_loc23_ && _loc2_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc15_:* = §§pop();
         if(!(_loc23_ && _loc3_))
         {
            §§push(_loc2_.col1);
            while(true)
            {
               §§push(§§pop().x);
               while(true)
               {
                  §§push(_loc14_);
                  if(!_loc23_)
                  {
                     §§push(§§pop() * §§pop());
                     while(true)
                     {
                        §§push(_loc2_.col2);
                        addr251:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr252:
                           while(true)
                           {
                              §§push(_loc15_);
                              addr253:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                           }
                        }
                        loop10:
                        for(; !(_loc23_ && _loc2_); if(!(_loc22_ || this))
                        {
                           continue;
                        },§§goto(addr149),§§push(Number(§§pop())))
                        {
                           §§push(_loc2_.col2);
                           if(_loc22_ || _loc2_)
                           {
                              §§push(§§pop().y);
                              if(_loc22_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc15_);
                                    if(_loc22_ || _loc3_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc22_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             _loc15_ = §§pop();
                                             addr241:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(_loc22_ || _loc3_)
                                                {
                                                   continue loop10;
                                                }
                                                continue loop13;
                                             }
                                          }
                                       }
                                       addr236:
                                    }
                                    break;
                                 }
                                 §§goto(addr253);
                              }
                              §§goto(addr236);
                           }
                           else
                           {
                              §§goto(addr251);
                           }
                        }
                     }
                  }
                  §§goto(addr254);
               }
            }
         }
         §§goto(addr264);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
