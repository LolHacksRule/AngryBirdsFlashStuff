package §@!]§
{
   import §,!3§.b2Vec2;
   import §3'§.b2internal;
   import §?!F§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §+t§:b2Vec2;
      
      public var §+^§:b2Vec2;
      
      public var §&!0§:b2Vec2;
      
      public var §,%§:b2Vec2;
      
      public var §30§:Number;
      
      public var §[!=§:Number;
      
      public var §!§:Number;
      
      public var §?Z§:Number;
      
      public var §>!;§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§+t§ = new b2Vec2();
         this.§+^§ = new b2Vec2();
         this.§&!0§ = new b2Vec2();
         this.§,%§ = new b2Vec2();
         super();
         type = b2Joint.§%>§;
         this.§+t§.Set(-1,1);
         this.§+^§.Set(1,1);
         this.§&!0§.Set(-1,0);
         this.§,%§.Set(1,0);
         this.§30§ = 0;
         this.§[!=§ = 0;
         this.§!§ = 0;
         this.§?Z§ = 0;
         this.§>!;§ = 1;
         collideConnected = true;
      }
      
      public function §^!R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §<!&§ = param1;
         §!8§ = param2;
         this.§+t§.SetV(param3);
         this.§+^§.SetV(param4);
         this.§&!0§ = §<!&§.GetLocalPoint(param5);
         this.§,%§ = §!8§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§30§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§!§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§>!;§ = param7;
         var _loc12_:Number = this.§30§ + this.§>!;§ * this.§!§;
         this.§[!=§ = _loc12_ - this.§>!;§ * b2PulleyJoint.§?V§;
         this.§?Z§ = (_loc12_ - b2PulleyJoint.§?V§) / this.§>!;§;
      }
   }
}
