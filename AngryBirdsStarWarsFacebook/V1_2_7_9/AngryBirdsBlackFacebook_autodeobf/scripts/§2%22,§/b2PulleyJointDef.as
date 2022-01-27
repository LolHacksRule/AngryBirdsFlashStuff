package §2",§
{
   import §1x§.b2Body;
   import §9!s§.b2internal;
   import §^>§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §!S§:b2Vec2;
      
      public var §6f§:b2Vec2;
      
      public var §2"g§:b2Vec2;
      
      public var §#l§:b2Vec2;
      
      public var §[<§:Number;
      
      public var §1!W§:Number;
      
      public var §#!!§:Number;
      
      public var §+!y§:Number;
      
      public var §5"=§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§!S§ = new b2Vec2();
         this.§6f§ = new b2Vec2();
         this.§2"g§ = new b2Vec2();
         this.§#l§ = new b2Vec2();
         super();
         type = b2Joint.§7N§;
         this.§!S§.Set(-1,1);
         this.§6f§.Set(1,1);
         this.§2"g§.Set(-1,0);
         this.§#l§.Set(1,0);
         this.§[<§ = 0;
         this.§1!W§ = 0;
         this.§#!!§ = 0;
         this.§+!y§ = 0;
         this.§5"=§ = 1;
         collideConnected = true;
      }
      
      public function §8!s§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §!!x§ = param1;
         §%!x§ = param2;
         this.§!S§.SetV(param3);
         this.§6f§.SetV(param4);
         this.§2"g§ = §!!x§.GetLocalPoint(param5);
         this.§#l§ = §%!x§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§[<§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§#!!§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§5"=§ = param7;
         var _loc12_:Number = this.§[<§ + this.§5"=§ * this.§#!!§;
         this.§1!W§ = _loc12_ - this.§5"=§ * b2PulleyJoint.§2""§;
         this.§+!y§ = (_loc12_ - b2PulleyJoint.§2""§) / this.§5"=§;
      }
   }
}
