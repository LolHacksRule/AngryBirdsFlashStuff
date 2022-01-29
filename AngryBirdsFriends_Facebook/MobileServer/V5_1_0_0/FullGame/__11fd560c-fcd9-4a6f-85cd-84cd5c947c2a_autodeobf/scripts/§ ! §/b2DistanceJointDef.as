package § ! §
{
   import § "%§.b2Vec2;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §#"z§:b2Vec2;
      
      public var §>#C§:b2Vec2;
      
      public var length:Number;
      
      public var §!Q§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§#"z§ = new b2Vec2();
         this.§>#C§ = new b2Vec2();
         super();
         type = b2Joint.§%!-§;
         this.length = 1;
         this.§!Q§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §?#W§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §'§ = param1;
         §>!2§ = param2;
         this.§#"z§.SetV(§'§.GetLocalPoint(param3));
         this.§>#C§.SetV(§>!2§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§!Q§ = 0;
         this.dampingRatio = 0;
      }
   }
}
