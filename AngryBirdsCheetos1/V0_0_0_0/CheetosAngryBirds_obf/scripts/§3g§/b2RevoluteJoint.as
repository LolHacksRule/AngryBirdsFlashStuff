package §3g§
{
   import §&!"§.b2Body;
   import §&!"§.b2TimeStep;
   import §9"§.b2Mat22;
   import §9"§.b2Mat33;
   import §9"§.b2Math;
   import §9"§.b2Vec2;
   import §9"§.b2Vec3;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §!s§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!s§ = new b2Vec2();
         }
      }
      
      private var §3Y§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §+"§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §8v§:b2Vec3;
      
      private var §>G§:Number;
      
      private var §#!&§:b2Mat33;
      
      private var §9<§:Number;
      
      private var §&!E§:Boolean;
      
      private var §[+§:Number;
      
      private var §+>§:Number;
      
      private var §%+§:Boolean;
      
      private var §^!O§:Number;
      
      private var §`!C§:Number;
      
      private var §#!<§:Number;
      
      private var §^!H§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§3Y§ = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               while(true)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.K3 = new b2Mat22();
                     while(true)
                     {
                        this.impulse3 = new b2Vec3();
                        loop4:
                        while(true)
                        {
                           this.impulse2 = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§+"§ = new b2Vec2();
                              while(true)
                              {
                                 this.m_localAnchor1 = new b2Vec2();
                                 loop8:
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop5;
                                    }
                                    this.§8v§ = new b2Vec3();
                                    loop9:
                                    while(true)
                                    {
                                       this.§#!&§ = new b2Mat33();
                                       loop10:
                                       while(!_loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             super(param1);
                                             while(true)
                                             {
                                                this.m_localAnchor1.SetV(param1.§4B§);
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   continue loop10;
                                                   addr133:
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      continue loop9;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             addr217:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.m_localAnchor2 = new b2Vec2();
                                                break loop10;
                                             }
                                             addr254:
                                          }
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                        }
                        addr175:
                        while(!(_loc2_ && _loc3_))
                        {
                           this.§8v§.§^!#§();
                           loop15:
                           while(true)
                           {
                              this.§>G§ = 0;
                              loop16:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop15;
                                 }
                                 this.§`!C§ = param1.§4q§;
                                 while(true)
                                 {
                                    if(!(_loc3_ || this))
                                    {
                                       continue loop16;
                                    }
                                    §§goto(addr133);
                                    addr98:
                                    loop19:
                                    while(_loc3_ || this)
                                    {
                                       this.§+>§ = param1.motorSpeed;
                                       while(true)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             this.§%+§ = param1.§9[§;
                                             continue;
                                          }
                                          continue loop19;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr233);
                              }
                           }
                           continue loop0;
                           §§goto(addr42);
                        }
                     }
                  }
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  this.§[+§ = param1.§6[§;
                  §§goto(addr98);
               }
            }
         }
         §§goto(addr254);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!D.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§8v§.x);
            if(!(_loc3_ && this))
            {
               §§goto(addr51);
            }
            §§goto(addr54);
         }
         addr51:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc3_)
         {
            addr54:
            §§push(§§pop() * this.§8v§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!(_loc2_ && param1))
         {
            return §§pop() * this.§8v§.z;
         }
      }
      
      public function §]!U§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(b2internal::;B.m_sweep.a - b2internal::2!D.m_sweep.a);
         if(_loc2_ || _loc2_)
         {
            return §§pop() - this.§^!O§;
         }
      }
      
      public function §%p§() : Number
      {
         return b2internal::;B.m_angularVelocity - b2internal::2!D.m_angularVelocity;
      }
      
      public function §#§() : Boolean
      {
         return this.§%+§;
      }
      
      public function §40§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§%+§ = param1;
         }
      }
      
      public function §7d§() : Number
      {
         return this.§`!C§;
      }
      
      public function §6_§() : Number
      {
         return this.§#!<§;
      }
      
      public function §5B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§`!C§ = param1;
            do
            {
               this.§#!<§ = param2;
            }
            while(!_loc3_);
            
         }
      }
      
      public function §@!'§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            b2internal::2!D.SetAwake(true);
            do
            {
               b2internal::;B.SetAwake(true);
            }
            while(!_loc2_);
            
         }
         return this.§&!E§;
      }
      
      public function §03§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!E§ = param1;
         }
      }
      
      public function §!^§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            b2internal::2!D.SetAwake(true);
            while(true)
            {
               b2internal::;B.SetAwake(true);
               loop1:
               while(_loc2_ || _loc3_)
               {
                  while(true)
                  {
                     this.§+>§ = param1;
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §5t§() : Number
      {
         return this.§+>§;
      }
      
      public function §7!0§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[+§ = param1;
         }
      }
      
      public function § try§() : Number
      {
         return this.§[+§;
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
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
