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
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §^D§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^D§ = new b2Vec2();
         }
      }
      
      private var §]_§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §>!T§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §,!2§:b2Vec3;
      
      private var §8t§:Number;
      
      private var §,0§:b2Mat33;
      
      private var §<M§:Number;
      
      private var §-!>§:Boolean;
      
      private var §"!;§:Number;
      
      private var §&?§:Number;
      
      private var §5,§:Boolean;
      
      private var §2!l§:Number;
      
      private var §-!E§:Number;
      
      private var §6P§:Number;
      
      private var §>!X§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§]_§ = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               while(true)
               {
                  this.K2 = new b2Mat22();
                  addr268:
                  while(true)
                  {
                     this.K3 = new b2Mat22();
                  }
                  loop16:
                  while(!(_loc3_ && param1))
                  {
                     this.§-!E§ = param1.§6!x§;
                     loop17:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              this.§6P§ = param1.§#f§;
                              loop18:
                              while(!_loc3_)
                              {
                                 this.§"!;§ = param1.§5!?§;
                                 loop19:
                                 while(_loc2_ || this)
                                 {
                                    this.§&?§ = param1.motorSpeed;
                                    while(_loc2_)
                                    {
                                       this.§5,§ = param1.§&%§;
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             this.§-!>§ = param1.§!;§;
                                             continue;
                                          }
                                          addr155:
                                          while(true)
                                          {
                                             this.§8t§ = 0;
                                             continue loop16;
                                          }
                                       }
                                       while(true)
                                       {
                                          this.m_localAnchor2.SetV(param1.§%!e§);
                                          addr177:
                                          while(true)
                                          {
                                             this.§2!l§ = param1.§-!Y§;
                                             §§goto(addr161);
                                          }
                                       }
                                       if(_loc2_ || this)
                                       {
                                          if(_loc2_ || _loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   return;
                                                }
                                                continue loop16;
                                             }
                                             continue loop18;
                                          }
                                          continue loop19;
                                          continue loop19;
                                       }
                                    }
                                    continue loop17;
                                 }
                                 while(_loc2_)
                                 {
                                    this.§>!T§ = new b2Vec2();
                                    §§goto(addr223);
                                    §§goto(addr98);
                                 }
                                 addr98:
                                 §§goto(addr268);
                              }
                              while(_loc2_)
                              {
                                 this.m_localAnchor1.SetV(param1.§<?§);
                                 §§goto(addr184);
                              }
                              §§goto(addr217);
                              addr189:
                           }
                           break;
                           addr121:
                        }
                        §§goto(addr177);
                     }
                     while(_loc2_)
                     {
                        super(param1);
                        §§goto(addr189);
                        §§goto(addr121);
                     }
                     while(true)
                     {
                        this.impulse3 = new b2Vec3();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr262);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6!G.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && param1))
         {
            §§push(this.§,!2§.x);
            if(_loc2_)
            {
               §§goto(addr41);
            }
            §§goto(addr44);
         }
         addr41:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc2_)
         {
            addr44:
            §§push(§§pop() * this.§,!2§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            return §§pop() * this.§,!2§.z;
         }
      }
      
      public function §,b§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(b2internal::0!w.m_sweep.a - b2internal::6!G.m_sweep.a);
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() - this.§2!l§;
         }
      }
      
      public function §4!f§() : Number
      {
         return b2internal::0!w.m_angularVelocity - b2internal::6!G.m_angularVelocity;
      }
      
      public function §1!B§() : Boolean
      {
         return this.§5,§;
      }
      
      public function §?j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§5,§ = param1;
         }
      }
      
      public function §"r§() : Number
      {
         return this.§-!E§;
      }
      
      public function §]!u§() : Number
      {
         return this.§6P§;
      }
      
      public function §7_§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§-!E§ = param1;
         }
         do
         {
            this.§6P§ = param2;
         }
         while(!_loc3_);
         
      }
      
      public function §>o§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            b2internal::6!G.SetAwake(true);
         }
         do
         {
            b2internal::0!w.SetAwake(true);
         }
         while(_loc2_);
         
         return this.§-!>§;
      }
      
      public function §8!'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-!>§ = param1;
         }
      }
      
      public function §[>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::6!G.SetAwake(true);
            do
            {
               b2internal::0!w.SetAwake(true);
               do
               {
                  this.§&?§ = param1;
               }
               while(!(_loc2_ || this));
               
            }
            while(_loc3_);
            
         }
      }
      
      public function §1!V§() : Number
      {
         return this.§&?§;
      }
      
      public function §>'§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"!;§ = param1;
         }
      }
      
      public function §0!k§() : Number
      {
         return this.§"!;§;
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
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
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
