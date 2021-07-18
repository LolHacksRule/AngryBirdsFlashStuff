package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Mat33;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Vec2;
   import §_-Ja§.b2Vec3;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-5q§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-5q§ = new b2Vec2();
         }
      }
      
      private var §_-9s§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-1m§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §_-tN§:b2Vec3;
      
      private var §_-3k§:Number;
      
      private var §_-jI§:b2Mat33;
      
      private var §_-5w§:Number;
      
      private var §_-2a§:Boolean;
      
      private var §_-SW§:Number;
      
      private var §_-bm§:Number;
      
      private var §_-b9§:Boolean;
      
      private var §_-VS§:Number;
      
      private var §_-8G§:Number;
      
      private var §_-4e§:Number;
      
      private var §_-0L§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-9s§ = new b2Mat22();
            this.K1 = new b2Mat22();
            if(_loc2_)
            {
               this.K2 = new b2Mat22();
               this.K3 = new b2Mat22();
               this.impulse3 = new b2Vec3();
               this.impulse2 = new b2Vec2();
               if(_loc2_ || this)
               {
                  addr53:
                  this.§_-1m§ = new b2Vec2();
                  this.m_localAnchor1 = new b2Vec2();
                  if(_loc2_)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§_-tN§ = new b2Vec3();
                        if(_loc2_ || this)
                        {
                           this.§_-jI§ = new b2Mat33();
                           if(!(_loc3_ && _loc2_))
                           {
                              addr103:
                              super(param1);
                              if(_loc2_)
                              {
                                 this.m_localAnchor1.SetV(param1.§_-Kz§);
                                 this.m_localAnchor2.SetV(param1.§_-Dq§);
                                 if(_loc2_)
                                 {
                                    addr120:
                                    this.§_-VS§ = param1.§_-Lv§;
                                    this.§_-tN§.§_-0a§();
                                    this.§_-3k§ = 0;
                                    this.§_-8G§ = param1.§_-Mn§;
                                    if(_loc3_)
                                    {
                                    }
                                    §§goto(addr142);
                                 }
                                 this.§_-4e§ = param1.§_-VQ§;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr142);
                                 }
                                 §§goto(addr163);
                              }
                           }
                           §§goto(addr163);
                        }
                        addr142:
                        this.§_-SW§ = param1.§_-fo§;
                        this.§_-bm§ = param1.motorSpeed;
                        this.§_-b9§ = param1.§_-3J§;
                        if(_loc2_)
                        {
                           addr163:
                           this.§_-2a§ = param1.§_-mY§;
                           §§goto(addr167);
                        }
                        addr167:
                        this.§_-0L§ = b2internal::_-vv;
                        return;
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr163);
               }
               §§goto(addr120);
            }
            §§goto(addr163);
         }
         §§goto(addr53);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-93.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(this.§_-tN§.x);
            if(_loc3_)
            {
               §§goto(addr36);
            }
            §§goto(addr51);
         }
         addr36:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc2_ && _loc2_))
         {
            addr51:
            §§push(§§pop() * this.§_-tN§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            §§push(§§pop() * this.§_-tN§.z);
         }
         return §§pop();
      }
      
      public function §_-sv§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(b2internal::_-9K.m_sweep.a - b2internal::_-93.m_sweep.a);
         if(_loc2_)
         {
            §§push(§§pop() - this.§_-VS§);
         }
         return §§pop();
      }
      
      public function §_-A6§() : Number
      {
         return b2internal::_-9K.m_angularVelocity - b2internal::_-93.m_angularVelocity;
      }
      
      public function §_-qL§() : Boolean
      {
         return this.§_-b9§;
      }
      
      public function §_-M5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-b9§ = param1;
         }
      }
      
      public function §_-3f§() : Number
      {
         return this.§_-8G§;
      }
      
      public function §_-LG§() : Number
      {
         return this.§_-4e§;
      }
      
      public function § get§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-8G§ = param1;
            if(!(_loc3_ && _loc3_))
            {
               addr33:
               this.§_-4e§ = param2;
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function §_-ur§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            b2internal::_-93.SetAwake(true);
            if(!_loc2_)
            {
               b2internal::_-9K.SetAwake(true);
            }
         }
         return this.§_-2a§;
      }
      
      public function §_-HV§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-2a§ = param1;
         }
      }
      
      public function §_-BM§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            b2internal::_-93.SetAwake(true);
            if(!(_loc3_ && _loc2_))
            {
               b2internal::_-9K.SetAwake(true);
               if(!_loc3_)
               {
                  this.§_-bm§ = param1;
               }
            }
         }
      }
      
      public function §_-wU§() : Number
      {
         return this.§_-bm§;
      }
      
      public function §_-lY§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§_-SW§ = param1;
         }
      }
      
      public function §_-Uh§() : Number
      {
         return this.§_-SW§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1139
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1864
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1833
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
