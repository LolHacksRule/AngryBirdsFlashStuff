package §`X§
{
   import §'!&§.b2Body;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §]"9§:b2Vec2;
      
      public var §'r§:b2Vec2;
      
      public var §!8§:b2Vec2;
      
      public var §@W§:b2Vec2;
      
      public var §+A§:Number;
      
      public var §&Y§:Number;
      
      public var §"U§:Number;
      
      public var §&F§:Number;
      
      public var §-!X§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§]"9§ = new b2Vec2();
         this.§'r§ = new b2Vec2();
         this.§!8§ = new b2Vec2();
         this.§@W§ = new b2Vec2();
         super();
         type = b2Joint.§%!0§;
         this.§]"9§.Set(-1,1);
         this.§'r§.Set(1,1);
         this.§!8§.Set(-1,0);
         this.§@W§.Set(1,0);
         this.§+A§ = 0;
         this.§&Y§ = 0;
         this.§"U§ = 0;
         this.§&F§ = 0;
         this.§-!X§ = 1;
         collideConnected = true;
      }
      
      public function §>`§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §+,§ = param1;
         §"R§ = param2;
         this.§]"9§.SetV(param3);
         this.§'r§.SetV(param4);
         this.§!8§ = §+,§.GetLocalPoint(param5);
         this.§@W§ = §"R§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§+A§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§"U§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§-!X§ = param7;
         var _loc12_:Number = this.§+A§ + this.§-!X§ * this.§"U§;
         this.§&Y§ = _loc12_ - this.§-!X§ * b2PulleyJoint.§5"2§;
         this.§&F§ = (_loc12_ - b2PulleyJoint.§5"2§) / this.§-!X§;
      }
   }
}
