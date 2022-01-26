package §9A§
{
   import §'!3§.b2internal;
   import §3q§.b2Vec2;
   import §?0§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §`!X§:b2Vec2;
      
      public var §+!,§:b2Vec2;
      
      public var length:Number;
      
      public var §60§:Number;
      
      public var §>F§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§`!X§ = new b2Vec2();
         this.§+!,§ = new b2Vec2();
         super();
         type = b2Joint.§9! §;
         this.length = 1;
         this.§60§ = 0;
         this.§>F§ = 0;
      }
      
      public function §;!W§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §#1§ = param1;
         §"!<§ = param2;
         this.§`!X§.SetV(§#1§.GetLocalPoint(param3));
         this.§+!,§.SetV(§"!<§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§60§ = 0;
         this.§>F§ = 0;
      }
   }
}
