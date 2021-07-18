package §3g§
{
   import §&!"§.b2Body;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var length:Number;
      
      public var §5X§:Number;
      
      public var §@N§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§4B§ = new b2Vec2();
         this.§ !Q§ = new b2Vec2();
         super();
         type = b2Joint.§-!§;
         this.length = 1;
         this.§5X§ = 0;
         this.§@N§ = 0;
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §<§ = param1;
         §,!M§ = param2;
         this.§4B§.SetV(§<§.GetLocalPoint(param3));
         this.§ !Q§.SetV(§,!M§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§5X§ = 0;
         this.§@N§ = 0;
      }
   }
}
