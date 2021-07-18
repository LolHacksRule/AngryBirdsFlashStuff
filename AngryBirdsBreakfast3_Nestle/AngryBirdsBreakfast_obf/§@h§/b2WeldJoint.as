package §@h§
{
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Mat33;
   import §@!E§.b2Math;
   import §@!E§.b2Vec2;
   import §@!E§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §=!P§:b2Vec2;
      
      private var §;z§:b2Vec2;
      
      private var §<!S§:Number;
      
      private var §6!h§:b2Vec3;
      
      private var §'q§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=!P§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§;z§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§6!h§ = new b2Vec3();
                  loop2:
                  while(true)
                  {
                     this.§'q§ = new b2Mat33();
                     loop3:
                     while(_loc2_)
                     {
                        addr75:
                        if(_loc3_ && param1)
                        {
                           continue;
                        }
                        this.§'q§ = new b2Mat33();
                        addr82:
                        if(_loc2_ || param1)
                        {
                           addr35:
                           if(_loc3_ && _loc3_)
                           {
                              while(true)
                              {
                                 this.§<!S§ = param1.§7!L§;
                                 loop8:
                                 while(true)
                                 {
                                    this.§6!h§.§>![§();
                                    addr73:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop8;
                                       }
                                       §§goto(addr75);
                                       §§goto(addr82);
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr35);
                              }
                              addr95:
                           }
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           addr44:
                           if(!(_loc3_ && param1))
                           {
                              continue loop1;
                           }
                           addr114:
                           while(true)
                           {
                              this.§=!P§.SetV(param1.§8D§);
                              continue loop2;
                              §§goto(addr44);
                           }
                        }
                        §§goto(addr73);
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            super(param1);
            §§goto(addr114);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!F.GetWorldPoint(this.§=!P§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!n.GetWorldPoint(this.§;z§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && this))
         {
            §§push(this.§6!h§.x);
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr46);
            }
            §§goto(addr64);
         }
         addr46:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc2_ || _loc3_)
         {
            addr64:
            §§push(§§pop() * this.§6!h§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!(_loc2_ && _loc3_))
         {
            return §§pop() * this.§6!h§.z;
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
         var _loc4_:b2Body = b2internal::9!F;
         var _loc5_:b2Body = b2internal::[!n;
         var _loc6_:b2Vec2 = _loc4_.§;!A§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc23_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§;!A§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§ c§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§ c§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§"k§);
         if(_loc22_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§"k§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§=!P§.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!_loc23_)
            {
               addr98:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§=!P§.y);
            if(_loc22_ || param1)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(_loc22_)
               {
                  addr117:
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
                     if(!_loc23_)
                     {
                        §§push(_loc14_);
                        if(!(_loc23_ && _loc3_))
                        {
                           addr236:
                           §§push(§§pop() * §§pop());
                           while(true)
                           {
                              §§push(_loc2_.col2);
                              addr238:
                              while(true)
                              {
                                 §§push(§§pop().x);
                              }
                           }
                           addr236:
                        }
                        while(true)
                        {
                           §§push(_loc15_);
                           addr240:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr241:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr242:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr243:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr244:
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr239:
                     }
                     §§goto(addr236);
                  }
               }
               §§goto(addr221);
            }
            §§goto(addr117);
         }
         §§goto(addr98);
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
