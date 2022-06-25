package §_-09-§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Mat33;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Vec2;
   import §_-Yp§.b2Vec3;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §_-06g§:b2Vec2;
      
      private var §_-uv§:b2Vec2;
      
      private var §_-nt§:Number;
      
      private var §_-MK§:b2Vec3;
      
      private var §_-5W§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-06g§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§_-uv§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§_-MK§ = new b2Vec3();
                  addr134:
                  addr93:
                  while(true)
                  {
                     this.§_-5W§ = new b2Mat33();
                  }
                  addr38:
                  do
                  {
                     if(_loc2_ && _loc2_)
                     {
                        continue loop1;
                     }
                     this.§_-uv§.SetV(param1.§_-0Bf§);
                     while(true)
                     {
                        if(_loc3_ || param1)
                        {
                           this.§_-nt§ = param1.§_-IW§;
                           continue;
                        }
                        addr128:
                        while(true)
                        {
                           super(param1);
                           continue loop0;
                        }
                     }
                  }
                  while(!(_loc3_ || _loc2_));
                  
                  if(_loc3_)
                  {
                     return;
                     addr40:
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr128);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-0FB.GetWorldPoint(this.§_-06g§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-c9.GetWorldPoint(this.§_-uv§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§_-MK§.x);
            if(_loc3_)
            {
               addr37:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() * this.§_-MK§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            return §§pop() * this.§_-MK§.z;
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
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::_-0FB;
         var _loc5_:b2Body = b2internal::_-c9;
         var _loc6_:b2Vec2 = _loc4_.§_-kZ§;
         §§push(_loc4_.m_angularVelocity);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§_-kZ§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§_-03A§);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§_-03A§);
         if(_loc22_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§_-Dz§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§_-Dz§);
         if(!(_loc23_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§_-06g§.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc23_ && _loc3_))
            {
               addr103:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§_-06g§.y);
            if(_loc22_ || this)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!(_loc23_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(!(_loc23_ && _loc2_))
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(!_loc23_)
                  {
                     §§push(_loc14_);
                     if(_loc22_ || _loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc23_ && _loc3_))
                        {
                           §§push(_loc2_.col2);
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(!_loc23_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc15_);
                                    addr220:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 addr219:
                              }
                              addr221:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr222:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr223:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr224:
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                           addr216:
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr223);
               }
            }
            §§goto(addr224);
         }
         §§goto(addr103);
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
