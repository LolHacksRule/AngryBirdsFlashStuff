package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §1w§:b2Vec2;
      
      public var §1!"§:b2Vec2;
      
      public var §8D§:b2Vec2;
      
      public var §@"$§:b2Vec2;
      
      public var §+!f§:Number;
      
      public var §=i§:Number;
      
      public var §,r§:Number;
      
      public var §&!'§:Number;
      
      public var §`,§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§1w§ = new b2Vec2();
         this.§1!"§ = new b2Vec2();
         this.§8D§ = new b2Vec2();
         this.§@"$§ = new b2Vec2();
         super();
         type = b2Joint.§1!P§;
         this.§1w§.Set(-1,1);
         this.§1!"§.Set(1,1);
         this.§8D§.Set(-1,0);
         this.§@"$§.Set(1,0);
         this.§+!f§ = 0;
         this.§=i§ = 0;
         this.§,r§ = 0;
         this.§&!'§ = 0;
         this.§`,§ = 1;
         collideConnected = true;
      }
      
      public function §6R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §9!w§ = param1;
         §>!W§ = param2;
         this.§1w§.SetV(param3);
         this.§1!"§.SetV(param4);
         this.§8D§ = §9!w§.GetLocalPoint(param5);
         this.§@"$§ = §>!W§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§+!f§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§,r§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§`,§ = param7;
         var _loc12_:Number = this.§+!f§ + this.§`,§ * this.§,r§;
         this.§=i§ = _loc12_ - this.§`,§ * b2PulleyJoint.§>!>§;
         this.§&!'§ = (_loc12_ - b2PulleyJoint.§>!>§) / this.§`,§;
      }
   }
}
