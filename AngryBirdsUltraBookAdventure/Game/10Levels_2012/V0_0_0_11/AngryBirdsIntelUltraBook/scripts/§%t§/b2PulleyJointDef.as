package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §+f§:b2Vec2;
      
      public var §6!P§:b2Vec2;
      
      public var §`!V§:b2Vec2;
      
      public var §6$§:b2Vec2;
      
      public var §,"§:Number;
      
      public var §!! §:Number;
      
      public var §[!$§:Number;
      
      public var §;u§:Number;
      
      public var §2![§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§+f§ = new b2Vec2();
         this.§6!P§ = new b2Vec2();
         this.§`!V§ = new b2Vec2();
         this.§6$§ = new b2Vec2();
         super();
         type = b2Joint.§+4§;
         this.§+f§.Set(-1,1);
         this.§6!P§.Set(1,1);
         this.§`!V§.Set(-1,0);
         this.§6$§.Set(1,0);
         this.§,"§ = 0;
         this.§!! § = 0;
         this.§[!$§ = 0;
         this.§;u§ = 0;
         this.§2![§ = 1;
         collideConnected = true;
      }
      
      public function §;o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §^!G§ = param1;
         §-z§ = param2;
         this.§+f§.SetV(param3);
         this.§6!P§.SetV(param4);
         this.§`!V§ = §^!G§.GetLocalPoint(param5);
         this.§6$§ = §-z§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§,"§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§[!$§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§2![§ = param7;
         var _loc12_:Number = this.§,"§ + this.§2![§ * this.§[!$§;
         this.§!! § = _loc12_ - this.§2![§ * b2PulleyJoint.§3!;§;
         this.§;u§ = (_loc12_ - b2PulleyJoint.§3!;§) / this.§2![§;
      }
   }
}
