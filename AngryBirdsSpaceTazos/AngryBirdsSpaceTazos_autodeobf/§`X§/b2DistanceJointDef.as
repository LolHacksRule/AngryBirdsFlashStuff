package §`X§
{
   import §'!&§.b2Body;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §!8§:b2Vec2;
      
      public var §@W§:b2Vec2;
      
      public var length:Number;
      
      public var §^J§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§!8§ = new b2Vec2();
         this.§@W§ = new b2Vec2();
         super();
         type = b2Joint.§4!Z§;
         this.length = 1;
         this.§^J§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §>`§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §+,§ = param1;
         §"R§ = param2;
         this.§!8§.SetV(§+,§.GetLocalPoint(param3));
         this.§@W§.SetV(§"R§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§^J§ = 0;
         this.dampingRatio = 0;
      }
   }
}
