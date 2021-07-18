package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Math;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var § case§:b2Vec2;
      
      private var §;"7§:b2Vec2;
      
      public var §1V§:b2Mat22;
      
      public var §5Q§:Number;
      
      private var §+"<§:b2Vec2;
      
      private var §7!7§:Number;
      
      private var §[%§:Number;
      
      private var §&!>§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ case§ = new b2Vec2();
            while(true)
            {
               this.§;"7§ = new b2Vec2();
               while(true)
               {
                  this.§1V§ = new b2Mat22();
                  while(true)
                  {
                     this.§+"<§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super(param1);
                        while(true)
                        {
                           this.§ case§.SetV(param1.§-!,§);
                           continue loop3;
                           addr44:
                           if(!(_loc3_ && this))
                           {
                              return;
                           }
                        }
                     }
                  }
                  while(_loc2_ || _loc3_)
                  {
                     this.§5Q§ = 0;
                     §§goto(addr107);
                     §§goto(addr57);
                  }
               }
               if(_loc3_ && param1)
               {
                  continue;
               }
               this.§;"7§.SetV(param1.§["9§);
               §§goto(addr126);
            }
         }
         §§goto(addr126);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"X.GetWorldPoint(this.§ case§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::5!.GetWorldPoint(this.§;"7§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§+"<§.x);
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr56);
            }
            §§goto(addr64);
         }
         addr56:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc2_ || _loc2_)
         {
            addr64:
            §§push(§§pop() * this.§+"<§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            return §§pop() * this.§7!7§;
         }
      }
      
      public function §=!x§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§[%§ = param1;
         }
      }
      
      public function §#!"§() : Number
      {
         return this.§[%§;
      }
      
      public function §!g§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!>§ = param1;
         }
      }
      
      public function §1""§() : Number
      {
         return this.§&!>§;
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
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::3"X;
         var _loc5_:b2Body = b2internal::5!;
         var _loc6_:b2Vec2 = _loc4_.§"!_§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§"!_§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§-@§);
         if(!(_loc27_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§-@§);
         if(!(_loc27_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§,H§);
         if(!(_loc27_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§,H§);
         if(!(_loc27_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§ case§.x);
         if(_loc26_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc26_ || param1)
            {
               addr115:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§ case§.y);
            if(_loc26_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!(_loc27_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(_loc26_ || param1)
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(_loc26_)
                  {
                     §§push(_loc14_);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc26_)
                        {
                           §§push(_loc2_.col2);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr249:
                              while(true)
                              {
                                 §§push(_loc15_);
                                 addr250:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc26_ || _loc3_)
                                       {
                                       }
                                       addr260:
                                       loop7:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_.col1);
                                                if(!_loc26_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop().y);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc14_);
                                                   if(!_loc27_)
                                                   {
                                                      if(!_loc26_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc26_)
                                                      {
                                                         if(!_loc27_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr229:
                                                      if(_loc27_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc27_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   loop11:
                                                   while(true)
                                                   {
                                                      _loc15_ = §§pop();
                                                      addr236:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc27_ && _loc2_))
                                                         {
                                                            continue loop10;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                        }
                     }
                  }
                  §§goto(addr260);
               }
            }
            §§goto(addr183);
         }
         §§goto(addr115);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
