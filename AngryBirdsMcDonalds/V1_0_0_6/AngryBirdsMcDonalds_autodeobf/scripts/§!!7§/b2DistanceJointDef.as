package §!!7§
{
   import §7!5§.b2Body;
   import §7!Y§.b2internal;
   import §@![§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §'8§:b2Vec2;
      
      public var §>!_§:b2Vec2;
      
      public var length:Number;
      
      public var §6U§:Number;
      
      public var §%R§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§'8§ = new b2Vec2();
         this.§>!_§ = new b2Vec2();
         super();
         type = b2Joint.§-o§;
         this.length = 1;
         this.§6U§ = 0;
         this.§%R§ = 0;
      }
      
      public function §1!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §1v§ = param1;
         §<W§ = param2;
         this.§'8§.SetV(§1v§.GetLocalPoint(param3));
         this.§>!_§.SetV(§<W§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§6U§ = 0;
         this.§%R§ = 0;
      }
   }
}
