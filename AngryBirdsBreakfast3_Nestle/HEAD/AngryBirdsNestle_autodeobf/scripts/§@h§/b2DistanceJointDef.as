package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §8D§:b2Vec2;
      
      public var §@"$§:b2Vec2;
      
      public var length:Number;
      
      public var §<!f§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§8D§ = new b2Vec2();
         this.§@"$§ = new b2Vec2();
         super();
         type = b2Joint.§4!-§;
         this.length = 1;
         this.§<!f§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §6R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §9!w§ = param1;
         §>!W§ = param2;
         this.§8D§.SetV(§9!w§.GetLocalPoint(param3));
         this.§@"$§.SetV(§>!W§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§<!f§ = 0;
         this.dampingRatio = 0;
      }
   }
}
