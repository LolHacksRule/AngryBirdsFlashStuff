package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §0_§:b2Vec2;
      
      public var §00§:b2Vec2;
      
      public var §;9§:b2Vec2;
      
      public var §-y§:b2Vec2;
      
      public var §-!R§:Number;
      
      public var §1_§:Number;
      
      public var §^l§:Number;
      
      public var §+!%§:Number;
      
      public var §6F§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§0_§ = new b2Vec2();
         this.§00§ = new b2Vec2();
         this.§;9§ = new b2Vec2();
         this.§-y§ = new b2Vec2();
         super();
         type = b2Joint.§5O§;
         this.§0_§.Set(-1,1);
         this.§00§.Set(1,1);
         this.§;9§.Set(-1,0);
         this.§-y§.Set(1,0);
         this.§-!R§ = 0;
         this.§1_§ = 0;
         this.§^l§ = 0;
         this.§+!%§ = 0;
         this.§6F§ = 1;
         collideConnected = true;
      }
      
      public function §>b§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §8!5§ = param1;
         §0n§ = param2;
         this.§0_§.SetV(param3);
         this.§00§.SetV(param4);
         this.§;9§ = §8!5§.GetLocalPoint(param5);
         this.§-y§ = §0n§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§-!R§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§^l§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§6F§ = param7;
         var _loc12_:Number = this.§-!R§ + this.§6F§ * this.§^l§;
         this.§1_§ = _loc12_ - this.§6F§ * b2PulleyJoint.§";§;
         this.§+!%§ = (_loc12_ - b2PulleyJoint.§";§) / this.§6F§;
      }
   }
}
