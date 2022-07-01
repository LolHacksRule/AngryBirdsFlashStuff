package §,!0§
{
   import §"J§.b2Body;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §3!&§:b2Vec2;
      
      public var §2!P§:b2Vec2;
      
      public var length:Number;
      
      public var §@!8§:Number;
      
      public var §+!n§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§3!&§ = new b2Vec2();
         this.§2!P§ = new b2Vec2();
         super();
         type = b2Joint.§'t§;
         this.length = 1;
         this.§@!8§ = 0;
         this.§+!n§ = 0;
      }
      
      public function §&!§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         § !T§ = param1;
         §import§ = param2;
         this.§3!&§.SetV(§ !T§.GetLocalPoint(param3));
         this.§2!P§.SetV(§import§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§@!8§ = 0;
         this.§+!n§ = 0;
      }
   }
}
