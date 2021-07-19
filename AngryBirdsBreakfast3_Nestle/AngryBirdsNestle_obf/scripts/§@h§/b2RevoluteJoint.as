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
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §7!p§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7!p§ = new b2Vec2();
         }
      }
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §5!2§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §6!h§:b2Vec3;
      
      private var §8!`§:Number;
      
      private var §'q§:b2Mat33;
      
      private var §=!l§:Number;
      
      private var §"Z§:Boolean;
      
      private var §4"&§:Number;
      
      private var §%! §:Number;
      
      private var §2!%§:Boolean;
      
      private var §<!S§:Number;
      
      private var §=!m§:Number;
      
      private var §#! §:Number;
      
      private var §@'§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.K = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               for(; !(_loc2_ && this); if(!(_loc3_ || this))
               {
                  continue;
               },this.§=!m§ = param1.§3!i§,§§goto(addr116))
               {
                  this.K2 = new b2Mat22();
                  while(true)
                  {
                     this.K3 = new b2Mat22();
                     loop3:
                     for(; !_loc2_; while(_loc3_ || param1)
                     {
                        this.§6!h§.§>![§();
                        §§goto(addr161);
                        §§goto(addr88);
                     })
                     {
                        this.impulse3 = new b2Vec3();
                        loop4:
                        while(true)
                        {
                           this.impulse2 = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§5!2§ = new b2Vec2();
                              loop6:
                              while(true)
                              {
                                 this.m_localAnchor1 = new b2Vec2();
                                 loop7:
                                 while(true)
                                 {
                                    this.m_localAnchor2 = new b2Vec2();
                                    loop8:
                                    while(true)
                                    {
                                       this.§6!h§ = new b2Vec3();
                                       addr223:
                                       while(true)
                                       {
                                          this.§'q§ = new b2Mat33();
                                          addr217:
                                          while(true)
                                          {
                                             super(param1);
                                             continue loop8;
                                          }
                                          addr95:
                                          if(!(_loc2_ && param1))
                                          {
                                             this.§%! § = param1.motorSpeed;
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      this.§2!%§ = param1.§05§;
                                                      loop21:
                                                      do
                                                      {
                                                         this.§"Z§ = param1.§9!g§;
                                                         addr57:
                                                         while(!(_loc2_ && this))
                                                         {
                                                            this.§@'§ = b2internal::-G;
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               continue loop21;
                                                            }
                                                         }
                                                      }
                                                      while(!_loc3_);
                                                      
                                                      continue;
                                                   }
                                                   addr116:
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         this.§#! § = param1.§^!t§;
                                                         while(_loc3_)
                                                         {
                                                            this.§4"&§ = param1.§"7§;
                                                            while(!(_loc2_ && _loc3_))
                                                            {
                                                               §§goto(addr95);
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ && param1))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop3;
                                                               §§goto(addr88);
                                                            }
                                                            addr88:
                                                            continue loop6;
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               return;
                                                            }
                                                         }
                                                         while(!_loc2_)
                                                         {
                                                            this.§8!`§ = 0;
                                                            §§goto(addr130);
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.m_localAnchor2.SetV(param1.§@"$§);
                                                            continue loop17;
                                                         }
                                                         addr199:
                                                      }
                                                   }
                                                   continue loop7;
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && this))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         this.§<!S§ = param1.§7!L§;
                                                         continue loop3;
                                                      }
                                                      continue loop8;
                                                      §§goto(addr57);
                                                   }
                                                   continue loop5;
                                                   addr183:
                                                }
                                                §§goto(addr88);
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr223);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!F.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!n.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§6!h§.x);
            if(_loc2_)
            {
               addr51:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc2_)
               {
                  §§push(§§pop() * this.§6!h§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr51);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            return §§pop() * this.§6!h§.z;
         }
      }
      
      public function §"!4§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(b2internal::[!n.m_sweep.a - b2internal::9!F.m_sweep.a);
         if(_loc1_ || this)
         {
            return §§pop() - this.§<!S§;
         }
      }
      
      public function §,!&§() : Number
      {
         return b2internal::[!n.m_angularVelocity - b2internal::9!F.m_angularVelocity;
      }
      
      public function §"!&§() : Boolean
      {
         return this.§2!%§;
      }
      
      public function §&"8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§2!%§ = param1;
         }
      }
      
      public function §[!>§() : Number
      {
         return this.§=!m§;
      }
      
      public function §0`§() : Number
      {
         return this.§#! §;
      }
      
      public function §=W§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§=!m§ = param1;
         }
         do
         {
            this.§#! § = param2;
         }
         while(_loc4_);
         
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§"Z§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            b2internal::9!F.SetAwake(true);
         }
         do
         {
            b2internal::[!n.SetAwake(true);
            do
            {
               this.§"Z§ = param1;
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
      }
      
      public function §2",§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            b2internal::9!F.SetAwake(true);
            while(true)
            {
               b2internal::[!n.SetAwake(true);
               loop1:
               while(_loc3_ || _loc2_)
               {
                  while(true)
                  {
                     this.§%! § = param1;
                     if(_loc3_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §>g§() : Number
      {
         return this.§%! §;
      }
      
      public function §;4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§4"&§ = param1;
         }
      }
      
      public function §7c§() : Number
      {
         return this.§4"&§;
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
