package §[h§
{
   import § !t§.b2Body;
   import § !t§.b2TimeStep;
   import §<!B§.b2Mat22;
   import §<!B§.b2Mat33;
   import §<!B§.b2Math;
   import §<!B§.b2Vec2;
   import §<!B§.b2Vec3;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §'f§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'f§ = new b2Vec2();
         }
      }
      
      private var §8!R§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §8!u§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §7!a§:b2Vec3;
      
      private var §0,§:Number;
      
      private var §+!U§:b2Mat33;
      
      private var §-!!§:Number;
      
      private var §7#§:Boolean;
      
      private var §;j§:Number;
      
      private var §4%§:Number;
      
      private var §&-§:Boolean;
      
      private var §?!i§:Number;
      
      private var §68§:Number;
      
      private var §&6§:Number;
      
      private var §]!C§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8!R§ = new b2Mat22();
            this.K1 = new b2Mat22();
            this.K2 = new b2Mat22();
            this.K3 = new b2Mat22();
            if(!(_loc3_ && _loc2_))
            {
               this.impulse3 = new b2Vec3();
               if(_loc2_ || param1)
               {
                  this.impulse2 = new b2Vec2();
                  if(!_loc3_)
                  {
                     addr58:
                     this.§8!u§ = new b2Vec2();
                     this.m_localAnchor1 = new b2Vec2();
                     if(!_loc3_)
                     {
                        this.m_localAnchor2 = new b2Vec2();
                        if(!(_loc3_ && this))
                        {
                           this.§7!a§ = new b2Vec3();
                        }
                        §§goto(addr140);
                     }
                     this.§+!U§ = new b2Mat33();
                     if(_loc2_)
                     {
                        super(param1);
                        if(_loc2_)
                        {
                           this.m_localAnchor1.SetV(param1.§;!1§);
                           this.m_localAnchor2.SetV(param1.§%?§);
                           if(!(_loc3_ && _loc2_))
                           {
                              this.§?!i§ = param1.§%g§;
                              this.§7!a§.§22§();
                              if(!_loc3_)
                              {
                                 addr130:
                                 this.§0,§ = 0;
                                 if(!(_loc3_ && this))
                                 {
                                    §§goto(addr140);
                                 }
                              }
                              addr140:
                              this.§68§ = param1.§=!1§;
                              §§goto(addr144);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr130);
                     }
                  }
                  addr144:
                  this.§&6§ = param1.§+Z§;
                  if(_loc2_ || _loc3_)
                  {
                     this.§;j§ = param1.§=!m§;
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr187);
                  }
                  this.§4%§ = param1.motorSpeed;
                  this.§&-§ = param1.§'!v§;
                  if(!_loc3_)
                  {
                     addr181:
                     this.§7#§ = param1.§3!J§;
                     if(!_loc2_)
                     {
                     }
                  }
                  §§goto(addr187);
               }
               addr187:
               this.§]!C§ = b2internal::2!v;
               return;
            }
            §§goto(addr58);
         }
         §§goto(addr140);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2+.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4P.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(this.§7!a§.x);
            if(_loc3_ || this)
            {
               §§goto(addr57);
            }
            §§goto(addr65);
         }
         addr57:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc3_ || this)
         {
            addr65:
            §§push(§§pop() * this.§7!a§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() * this.§7!a§.z);
         }
         return §§pop();
      }
      
      public function § !b§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(b2internal::4P.m_sweep.a - b2internal::2+.m_sweep.a);
         if(_loc1_)
         {
            §§push(§§pop() - this.§?!i§);
         }
         return §§pop();
      }
      
      public function §%9§() : Number
      {
         return b2internal::4P.m_angularVelocity - b2internal::2+.m_angularVelocity;
      }
      
      public function §[M§() : Boolean
      {
         return this.§&-§;
      }
      
      public function §&O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&-§ = param1;
         }
      }
      
      public function §7!%§() : Number
      {
         return this.§68§;
      }
      
      public function §"B§() : Number
      {
         return this.§&6§;
      }
      
      public function §0S§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§68§ = param1;
            if(!(_loc4_ && param1))
            {
               this.§&6§ = param2;
            }
         }
      }
      
      public function §1!'§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            b2internal::2+.SetAwake(true);
            if(!(_loc2_ && _loc2_))
            {
               addr43:
               b2internal::4P.SetAwake(true);
            }
            return this.§7#§;
         }
         §§goto(addr43);
      }
      
      public function §4!Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7#§ = param1;
         }
      }
      
      public function §-0§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            b2internal::2+.SetAwake(true);
            if(_loc2_)
            {
               b2internal::4P.SetAwake(true);
               if(!(_loc3_ && this))
               {
                  addr48:
                  this.§4%§ = param1;
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function §1B§() : Number
      {
         return this.§4%§;
      }
      
      public function §2$§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§;j§ = param1;
         }
      }
      
      public function §+n§() : Number
      {
         return this.§;j§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1229
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2015
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2055
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
