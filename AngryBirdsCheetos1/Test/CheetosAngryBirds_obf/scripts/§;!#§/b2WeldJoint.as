package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Mat33;
   import §6!H§.b2Math;
   import §6!H§.b2Vec2;
   import §6!H§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var § t§:b2Vec2;
      
      private var §9!5§:b2Vec2;
      
      private var §#!Z§:Number;
      
      private var §==§:b2Vec3;
      
      private var §>§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§ t§ = new b2Vec2();
            while(true)
            {
               this.§9!5§ = new b2Vec2();
               while(_loc2_)
               {
                  loop3:
                  for(; !(_loc3_ && param1); if(_loc2_ || _loc2_)
                  {
                     return;
                  })
                  {
                     this.§>§ = new b2Mat33();
                     loop4:
                     while(true)
                     {
                        super(param1);
                        while(true)
                        {
                           this.§ t§.SetV(param1.§!!U§);
                           loop6:
                           while(!(_loc3_ && this))
                           {
                              this.§9!5§.SetV(param1.§"!'§);
                              while(!_loc3_)
                              {
                                 this.§#!Z§ = param1.§49§;
                                 loop8:
                                 while(_loc2_ || param1)
                                 {
                                    this.§==§.§7_§();
                                    while(!_loc3_)
                                    {
                                       this.§>§ = new b2Mat33();
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop8;
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§==§ = new b2Vec3();
            §§goto(addr114);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6z.GetWorldPoint(this.§ t§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::3D.GetWorldPoint(this.§9!5§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || this)
         {
            §§push(this.§==§.x);
            if(_loc2_ || _loc3_)
            {
               §§goto(addr56);
            }
            §§goto(addr59);
         }
         addr56:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc3_)
         {
            addr59:
            §§push(§§pop() * this.§==§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * this.§==§.z;
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
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::6z;
         var _loc5_:b2Body = b2internal::3D;
         var _loc6_:b2Vec2 = _loc4_.§2!@§;
         §§push(_loc4_.m_angularVelocity);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§2!@§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc22_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§+5§);
         if(_loc22_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§+5§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§%L§);
         if(!(_loc23_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§%L§);
         if(_loc22_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§ t§.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc23_ && this))
            {
               addr113:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§ t§.y);
            if(!(_loc23_ && _loc2_))
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!_loc23_)
               {
                  addr132:
                  §§push(Number(§§pop()));
               }
               var _loc15_:* = §§pop();
               if(!_loc23_)
               {
                  §§push(_loc2_.col1);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().x);
                     while(true)
                     {
                        §§push(_loc14_);
                        if(_loc22_ || _loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           loop2:
                           while(true)
                           {
                              §§push(_loc2_.col2);
                              addr256:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 if(!_loc23_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc15_);
                                       addr260:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                       }
                                    }
                                    addr259:
                                 }
                                 addr261:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr262:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr263:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr264:
                                          while(true)
                                          {
                                             addr179:
                                             while(true)
                                             {
                                                §§push(_loc2_.col1);
                                                if(_loc22_)
                                                {
                                                   §§push(§§pop().y);
                                                   continue loop2;
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr259);
                     }
                  }
               }
               §§goto(addr264);
            }
            §§goto(addr132);
         }
         §§goto(addr113);
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
