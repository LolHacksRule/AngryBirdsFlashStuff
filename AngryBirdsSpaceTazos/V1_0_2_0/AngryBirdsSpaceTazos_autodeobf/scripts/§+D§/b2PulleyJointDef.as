package §+D§
{
   import §#!X§.b2Body;
   import §&!S§.b2Vec2;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §&"7§:b2Vec2;
      
      public var §+!L§:b2Vec2;
      
      public var §&9§:b2Vec2;
      
      public var §^"<§:b2Vec2;
      
      public var §>u§:Number;
      
      public var §-j§:Number;
      
      public var §^p§:Number;
      
      public var §<!5§:Number;
      
      public var §1""§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§&"7§ = new b2Vec2();
         this.§+!L§ = new b2Vec2();
         this.§&9§ = new b2Vec2();
         this.§^"<§ = new b2Vec2();
         super();
         type = b2Joint.§!"%§;
         this.§&"7§.Set(-1,1);
         this.§+!L§.Set(1,1);
         this.§&9§.Set(-1,0);
         this.§^"<§.Set(1,0);
         this.§>u§ = 0;
         this.§-j§ = 0;
         this.§^p§ = 0;
         this.§<!5§ = 0;
         this.§1""§ = 1;
         collideConnected = true;
      }
      
      public function §5!k§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §43§ = param1;
         §4!l§ = param2;
         this.§&"7§.SetV(param3);
         this.§+!L§.SetV(param4);
         this.§&9§ = §43§.GetLocalPoint(param5);
         this.§^"<§ = §4!l§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§>u§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§^p§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§1""§ = param7;
         var _loc12_:Number = this.§>u§ + this.§1""§ * this.§^p§;
         this.§-j§ = _loc12_ - this.§1""§ * b2PulleyJoint.§7X§;
         this.§<!5§ = (_loc12_ - b2PulleyJoint.§7X§) / this.§1""§;
      }
   }
}
