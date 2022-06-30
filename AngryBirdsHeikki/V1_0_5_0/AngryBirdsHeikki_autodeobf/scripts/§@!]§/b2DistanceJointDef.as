package §@!]§
{
   import §,!3§.b2Vec2;
   import §3'§.b2internal;
   import §?!F§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §&!0§:b2Vec2;
      
      public var §,%§:b2Vec2;
      
      public var length:Number;
      
      public var §?1§:Number;
      
      public var §%m§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§&!0§ = new b2Vec2();
         this.§,%§ = new b2Vec2();
         super();
         type = b2Joint.§3!X§;
         this.length = 1;
         this.§?1§ = 0;
         this.§%m§ = 0;
      }
      
      public function §^!R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §<!&§ = param1;
         §!8§ = param2;
         this.§&!0§.SetV(§<!&§.GetLocalPoint(param3));
         this.§,%§.SetV(§!8§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§?1§ = 0;
         this.§%m§ = 0;
      }
   }
}
