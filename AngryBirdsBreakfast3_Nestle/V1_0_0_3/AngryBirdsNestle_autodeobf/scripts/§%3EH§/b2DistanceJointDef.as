package §>H§
{
   import § !%§.b2internal;
   import §,!k§.b2Vec2;
   import §;'§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §`!>§:b2Vec2;
      
      public var §0l§:b2Vec2;
      
      public var length:Number;
      
      public var §;!3§:Number;
      
      public var §]^§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§`!>§ = new b2Vec2();
         this.§0l§ = new b2Vec2();
         super();
         type = b2Joint.§14§;
         this.length = 1;
         this.§;!3§ = 0;
         this.§]^§ = 0;
      }
      
      public function §2f§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §>q§ = param1;
         §6!,§ = param2;
         this.§`!>§.SetV(§>q§.GetLocalPoint(param3));
         this.§0l§.SetV(§6!,§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§;!3§ = 0;
         this.§]^§ = 0;
      }
   }
}
