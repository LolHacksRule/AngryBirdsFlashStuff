package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §@"@§:b2Vec2;
      
      public var §&@§:b2Vec2;
      
      public var §#C§:b2Vec2;
      
      public var §^!J§:b2Vec2;
      
      public var §4o§:Number;
      
      public var §,"6§:Number;
      
      public var §!!<§:Number;
      
      public var §;A§:Number;
      
      public var §""3§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§@"@§ = new b2Vec2();
         this.§&@§ = new b2Vec2();
         this.§#C§ = new b2Vec2();
         this.§^!J§ = new b2Vec2();
         super();
         type = b2Joint.§3!u§;
         this.§@"@§.Set(-1,1);
         this.§&@§.Set(1,1);
         this.§#C§.Set(-1,0);
         this.§^!J§.Set(1,0);
         this.§4o§ = 0;
         this.§,"6§ = 0;
         this.§!!<§ = 0;
         this.§;A§ = 0;
         this.§""3§ = 1;
         collideConnected = true;
      }
      
      public function §`!r§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §!!v§ = param1;
         §'!4§ = param2;
         this.§@"@§.SetV(param3);
         this.§&@§.SetV(param4);
         this.§#C§ = §!!v§.GetLocalPoint(param5);
         this.§^!J§ = §'!4§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§4o§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§!!<§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§""3§ = param7;
         var _loc12_:Number = this.§4o§ + this.§""3§ * this.§!!<§;
         this.§,"6§ = _loc12_ - this.§""3§ * b2PulleyJoint.§+>§;
         this.§;A§ = (_loc12_ - b2PulleyJoint.§+>§) / this.§""3§;
      }
   }
}
