package §+C§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Mat33;
   import §6Z§.b2Math;
   import §6Z§.b2Vec2;
   import §6Z§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §3g§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3g§ = new b2Vec2();
         }
      }
      
      private var §""%§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §>;§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §0!F§:b2Vec3;
      
      private var §8!9§:Number;
      
      private var §6!L§:b2Mat33;
      
      private var §9q§:Number;
      
      private var §%O§:Boolean;
      
      private var §8D§:Number;
      
      private var §0!9§:Number;
      
      private var § !§:Boolean;
      
      private var §!!3§:Number;
      
      private var §;M§:Number;
      
      private var §"p§:Number;
      
      private var §%!T§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§""%§ = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
            }
            addr284:
         }
         loop1:
         while(true)
         {
            this.K2 = new b2Mat22();
            loop2:
            while(true)
            {
               this.K3 = new b2Mat22();
               loop3:
               while(true)
               {
                  this.impulse3 = new b2Vec3();
                  loop4:
                  while(true)
                  {
                     this.impulse2 = new b2Vec2();
                     loop5:
                     for(; !_loc3_; while(!_loc3_)
                     {
                        this.§;M§ = param1.§ +§;
                        §§goto(addr101);
                     })
                     {
                        if(_loc3_)
                        {
                           continue loop2;
                        }
                        this.§>;§ = new b2Vec2();
                        while(true)
                        {
                           this.m_localAnchor1 = new b2Vec2();
                           loop7:
                           while(true)
                           {
                              this.m_localAnchor2 = new b2Vec2();
                              while(true)
                              {
                                 this.§0!F§ = new b2Vec3();
                                 loop9:
                                 while(true)
                                 {
                                    this.§6!L§ = new b2Mat33();
                                    addr202:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop9;
                                    }
                                    continue loop1;
                                 }
                                 loop14:
                                 for(; _loc2_ || param1; if(_loc2_ || _loc2_)
                                 {
                                    continue loop7;
                                 })
                                 {
                                    this.§0!F§.§5!H§();
                                    while(!_loc3_)
                                    {
                                       this.§8!9§ = 0;
                                       continue loop5;
                                       addr61:
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr68:
                                          if(_loc2_ || param1)
                                          {
                                             this.§%O§ = param1.§[!W§;
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                loop21:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr61);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§8D§ = param1.§1&§;
                                                            addr89:
                                                            while(true)
                                                            {
                                                               this.§0!9§ = param1.motorSpeed;
                                                            }
                                                         }
                                                         addr95:
                                                      }
                                                   }
                                                   while(_loc2_)
                                                   {
                                                      this.§ !§ = param1.§+!<§;
                                                      continue loop21;
                                                   }
                                                   §§goto(addr89);
                                                }
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop14;
                                                }
                                                continue loop5;
                                             }
                                             continue loop7;
                                             addr101:
                                          }
                                          continue loop4;
                                       }
                                    }
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       this.§!!3§ = param1.§<!b§;
                                       continue loop14;
                                    }
                                    while(true)
                                    {
                                       this.m_localAnchor1.SetV(param1.§0O§);
                                       continue loop4;
                                       §§goto(addr168);
                                    }
                                    addr168:
                                 }
                              }
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           this.§"p§ = param1.§,!n§;
                           §§goto(addr95);
                        }
                     }
                     continue loop3;
                  }
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && this))
         {
            §§push(this.§0!F§.x);
            if(_loc3_ || _loc2_)
            {
               §§goto(addr47);
            }
            §§goto(addr65);
         }
         addr47:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc2_ && this))
         {
            addr65:
            §§push(§§pop() * this.§0!F§.y);
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
            return §§pop() * this.§0!F§.z;
         }
      }
      
      public function §@-§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(b2internal::8!F.m_sweep.a - b2internal::[Z.m_sweep.a);
         if(_loc2_ || _loc2_)
         {
            return §§pop() - this.§!!3§;
         }
      }
      
      public function §="'§() : Number
      {
         return b2internal::8!F.m_angularVelocity - b2internal::[Z.m_angularVelocity;
      }
      
      public function §!!B§() : Boolean
      {
         return this.§ !§;
      }
      
      public function §2!4§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !§ = param1;
         }
      }
      
      public function §]!7§() : Number
      {
         return this.§;M§;
      }
      
      public function §%!Z§() : Number
      {
         return this.§"p§;
      }
      
      public function §;1§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§;M§ = param1;
         }
         do
         {
            this.§"p§ = param2;
         }
         while(!_loc3_);
         
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§%O§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            b2internal::[Z.SetAwake(true);
            while(true)
            {
               b2internal::8!F.SetAwake(true);
               while(!(_loc2_ && param1))
               {
                  this.§%O§ = param1;
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §"!v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            b2internal::[Z.SetAwake(true);
            while(true)
            {
               b2internal::8!F.SetAwake(true);
               while(_loc2_ || param1)
               {
                  this.§0!9§ = param1;
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §7"%§() : Number
      {
         return this.§0!9§;
      }
      
      public function §9!=§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§8D§ = param1;
         }
      }
      
      public function §!y§() : Number
      {
         return this.§8D§;
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
