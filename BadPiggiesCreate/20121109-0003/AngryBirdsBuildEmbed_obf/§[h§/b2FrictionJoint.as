package §[h§
{
   import § !t§.b2Body;
   import § !t§.b2TimeStep;
   import §<!B§.b2Mat22;
   import §<!B§.b2Math;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §"h§:b2Vec2;
      
      private var §58§:b2Vec2;
      
      public var §8[§:b2Mat22;
      
      public var § !L§:Number;
      
      private var §[7§:b2Vec2;
      
      private var §>k§:Number;
      
      private var §%G§:Number;
      
      private var §`!a§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§"h§ = new b2Vec2();
            if(_loc3_ || param1)
            {
               this.§58§ = new b2Vec2();
               this.§8[§ = new b2Mat22();
               this.§[7§ = new b2Vec2();
               super(param1);
               if(_loc3_)
               {
                  this.§"h§.SetV(param1.§;!1§);
                  if(_loc3_ || _loc2_)
                  {
                     this.§58§.SetV(param1.§%?§);
                     this.§8[§.§22§();
                     this.§ !L§ = 0;
                     this.§[7§.§22§();
                     addr74:
                     if(_loc3_ || _loc3_)
                     {
                        this.§>k§ = 0;
                        this.§%G§ = param1.§%!$§;
                        addr112:
                        this.§`!a§ = param1.maxTorque;
                     }
                  }
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr112);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2+.GetWorldPoint(this.§"h§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4P.GetWorldPoint(this.§58§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && param1))
         {
            §§push(this.§[7§.x);
            if(_loc3_ || _loc3_)
            {
               addr57:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_ || this)
               {
                  §§push(§§pop() * this.§[7§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr57);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop() * this.§>k§);
         }
         return §§pop();
      }
      
      public function §`!O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%G§ = param1;
         }
      }
      
      public function §;4§() : Number
      {
         return this.§%G§;
      }
      
      public function §^5§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!a§ = param1;
         }
      }
      
      public function §=%§() : Number
      {
         return this.§`!a§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1245
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 949
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
