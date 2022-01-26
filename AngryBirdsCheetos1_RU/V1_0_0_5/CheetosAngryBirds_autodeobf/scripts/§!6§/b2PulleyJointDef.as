package §!6§
{
   import § !5§.b2internal;
   import §+,§.b2Vec2;
   import §[W§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §7!0§:b2Vec2;
      
      public var §<!#§:b2Vec2;
      
      public var §2f§:b2Vec2;
      
      public var §@n§:b2Vec2;
      
      public var §,8§:Number;
      
      public var §#O§:Number;
      
      public var §9w§:Number;
      
      public var §;f§:Number;
      
      public var §#!J§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§7!0§ = new b2Vec2();
         this.§<!#§ = new b2Vec2();
         this.§2f§ = new b2Vec2();
         this.§@n§ = new b2Vec2();
         super();
         type = b2Joint.§;q§;
         this.§7!0§.Set(-1,1);
         this.§<!#§.Set(1,1);
         this.§2f§.Set(-1,0);
         this.§@n§.Set(1,0);
         this.§,8§ = 0;
         this.§#O§ = 0;
         this.§9w§ = 0;
         this.§;f§ = 0;
         this.§#!J§ = 1;
         collideConnected = true;
      }
      
      public function §+!R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §-[§ = param1;
         §>N§ = param2;
         this.§7!0§.SetV(param3);
         this.§<!#§.SetV(param4);
         this.§2f§ = §-[§.GetLocalPoint(param5);
         this.§@n§ = §>N§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§,8§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§9w§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§#!J§ = param7;
         var _loc12_:Number = this.§,8§ + this.§#!J§ * this.§9w§;
         this.§#O§ = _loc12_ - this.§#!J§ * b2PulleyJoint.§2B§;
         this.§;f§ = (_loc12_ - b2PulleyJoint.§2B§) / this.§#!J§;
      }
   }
}
