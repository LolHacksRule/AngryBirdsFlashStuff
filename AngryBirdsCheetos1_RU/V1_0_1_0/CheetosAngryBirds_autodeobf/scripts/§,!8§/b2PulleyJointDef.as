package §,!8§
{
   import §&!B§.b2Vec2;
   import §[x§.b2Body;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §>k§:b2Vec2;
      
      public var §1!J§:b2Vec2;
      
      public var §'s§:b2Vec2;
      
      public var §5%§:b2Vec2;
      
      public var § -§:Number;
      
      public var §<V§:Number;
      
      public var §+@§:Number;
      
      public var §>!F§:Number;
      
      public var §?3§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§>k§ = new b2Vec2();
         this.§1!J§ = new b2Vec2();
         this.§'s§ = new b2Vec2();
         this.§5%§ = new b2Vec2();
         super();
         type = b2Joint.§92§;
         this.§>k§.Set(-1,1);
         this.§1!J§.Set(1,1);
         this.§'s§.Set(-1,0);
         this.§5%§.Set(1,0);
         this.§ -§ = 0;
         this.§<V§ = 0;
         this.§+@§ = 0;
         this.§>!F§ = 0;
         this.§?3§ = 1;
         collideConnected = true;
      }
      
      public function §8#§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §^!<§ = param1;
         §!E§ = param2;
         this.§>k§.SetV(param3);
         this.§1!J§.SetV(param4);
         this.§'s§ = §^!<§.GetLocalPoint(param5);
         this.§5%§ = §!E§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§ -§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§+@§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§?3§ = param7;
         var _loc12_:Number = this.§ -§ + this.§?3§ * this.§+@§;
         this.§<V§ = _loc12_ - this.§?3§ * b2PulleyJoint.§-G§;
         this.§>!F§ = (_loc12_ - b2PulleyJoint.§-G§) / this.§?3§;
      }
   }
}
