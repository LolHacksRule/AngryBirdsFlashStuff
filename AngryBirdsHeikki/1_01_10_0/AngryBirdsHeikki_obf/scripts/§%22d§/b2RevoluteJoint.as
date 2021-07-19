package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Mat33;
   import §6A§.b2Math;
   import §6A§.b2Vec2;
   import §6A§.b2Vec3;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §7s§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §7s§ = new b2Vec2();
         }
      }
      
      private var §=6§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §<R§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §12§:b2Vec3;
      
      private var §!!X§:Number;
      
      private var §`!6§:b2Mat33;
      
      private var §!b§:Number;
      
      private var §6!P§:Boolean;
      
      private var §8!T§:Number;
      
      private var §?T§:Number;
      
      private var §?!c§:Boolean;
      
      private var §=C§:Number;
      
      private var § !%§:Number;
      
      private var §,K§:Number;
      
      private var §"B§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=6§ = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(true)
               {
                  this.K2 = new b2Mat22();
                  addr258:
                  while(true)
                  {
                     this.K3 = new b2Mat22();
                     addr252:
                     while(true)
                     {
                        this.impulse3 = new b2Vec3();
                        addr246:
                        while(true)
                        {
                           this.impulse2 = new b2Vec2();
                           continue loop1;
                        }
                     }
                  }
               }
               loop8:
               for(; _loc2_ || this; if(!(_loc3_ && this))
               {
                  return;
               })
               {
                  this.§12§ = new b2Vec3();
                  loop9:
                  while(true)
                  {
                     this.§`!6§ = new b2Mat33();
                     loop10:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              super(param1);
                              loop11:
                              while(!_loc3_)
                              {
                                 this.m_localAnchor1.SetV(param1.§@b§);
                                 loop12:
                                 for(; _loc2_; loop15:
                                 while(!(_loc3_ && this))
                                 {
                                    while(true)
                                    {
                                       this.§!!X§ = 0;
                                       loop17:
                                       while(true)
                                       {
                                          this.§ !%§ = param1.§"!0§;
                                          while(true)
                                          {
                                             this.§,K§ = param1.§ b§;
                                             while(_loc2_ || _loc2_)
                                             {
                                                this.§8!T§ = param1.§'Y§;
                                                loop20:
                                                while(_loc2_ || _loc3_)
                                                {
                                                   this.§?T§ = param1.motorSpeed;
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop17;
                                                      }
                                                      continue loop20;
                                                      addr60:
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      this.§"B§ = b2internal::7t;
                                                      addr69:
                                                      if(_loc3_)
                                                      {
                                                         loop23:
                                                         while(true)
                                                         {
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               §§goto(addr60);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§6!P§ = param1.§;`§;
                                                                  continue loop23;
                                                               }
                                                               addr75:
                                                            }
                                                         }
                                                         continue loop10;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr246);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 })
                                 {
                                    this.m_localAnchor2.SetV(param1.§=i§);
                                    while(true)
                                    {
                                       this.§=C§ = param1.§;w§;
                                       addr159:
                                       while(_loc2_)
                                       {
                                          this.§12§.§^!,§();
                                          continue loop12;
                                       }
                                    }
                                 }
                                 continue loop9;
                                 if(_loc2_ || param1)
                                 {
                                    continue loop8;
                                 }
                              }
                              §§goto(addr219);
                           }
                           break;
                        }
                        §§goto(addr227);
                     }
                     §§goto(addr233);
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§12§.x);
            if(!_loc3_)
            {
               §§goto(addr46);
            }
            §§goto(addr49);
         }
         addr46:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc2_)
         {
            addr49:
            §§push(§§pop() * this.§12§.y);
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
            return §§pop() * this.§12§.z;
         }
      }
      
      public function §9-§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(b2internal::2!`.m_sweep.a - b2internal::#A.m_sweep.a);
         if(!_loc1_)
         {
            return §§pop() - this.§=C§;
         }
      }
      
      public function §?!D§() : Number
      {
         return b2internal::2!`.m_angularVelocity - b2internal::#A.m_angularVelocity;
      }
      
      public function § p§() : Boolean
      {
         return this.§?!c§;
      }
      
      public function §3<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§?!c§ = param1;
         }
      }
      
      public function §6-§() : Number
      {
         return this.§ !%§;
      }
      
      public function §41§() : Number
      {
         return this.§,K§;
      }
      
      public function §+!T§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§ !%§ = param1;
         }
         do
         {
            this.§,K§ = param2;
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public function §@7§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            b2internal::#A.SetAwake(true);
         }
         do
         {
            b2internal::2!`.SetAwake(true);
         }
         while(!(_loc2_ || _loc1_));
         
         return this.§6!P§;
      }
      
      public function §1!'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6!P§ = param1;
         }
      }
      
      public function §2!K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            b2internal::#A.SetAwake(true);
            while(true)
            {
               b2internal::2!`.SetAwake(true);
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§?T§ = param1;
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §^!f§() : Number
      {
         return this.§?T§;
      }
      
      public function §`!-§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8!T§ = param1;
         }
      }
      
      public function §+!P§() : Number
      {
         return this.§8!T§;
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
