package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §_-9u§:b2Vec2;
      
      private var §_-9C§:b2Vec2;
      
      public var §_-TP§:b2Mat22;
      
      public var §_-ac§:Number;
      
      private var §_-s0§:b2Vec2;
      
      private var §_-9P§:Number;
      
      private var §_-CU§:Number;
      
      private var §_-no§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§_-9u§ = new b2Vec2();
         if(!_loc2_)
         {
            this.§_-9C§ = new b2Vec2();
            this.§_-TP§ = new b2Mat22();
            this.§_-s0§ = new b2Vec2();
            super(param1);
            if(_loc3_)
            {
               this.§_-9u§.SetV(param1.§_-Kz§);
               if(_loc3_)
               {
                  this.§_-9C§.SetV(param1.§_-Dq§);
                  this.§_-TP§.§_-0a§();
                  if(!_loc2_)
                  {
                     this.§_-ac§ = 0;
                     this.§_-s0§.§_-0a§();
                     if(!_loc2_)
                     {
                        §§goto(addr69);
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr81);
            }
            addr69:
            this.§_-9P§ = 0;
            if(!_loc2_)
            {
               addr81:
               this.§_-CU§ = param1.§_-O9§;
               this.§_-no§ = param1.maxTorque;
            }
            return;
         }
         §§goto(addr81);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-93.GetWorldPoint(this.§_-9u§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.§_-9C§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§_-s0§.x);
            if(!_loc3_)
            {
               addr37:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop() * this.§_-s0§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() * this.§_-9P§);
         }
         return §§pop();
      }
      
      public function §_-23§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§_-CU§ = param1;
         }
      }
      
      public function §_-8N§() : Number
      {
         return this.§_-CU§;
      }
      
      public function §_-yo§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§_-no§ = param1;
         }
      }
      
      public function §_-vZ§() : Number
      {
         return this.§_-no§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1156
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 928
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
