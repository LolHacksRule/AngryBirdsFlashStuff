package §"!4§
{
   import § y§.b2Body;
   import §54§.b2internal;
   import §;h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §9%§:b2Vec2;
      
      public var §+!"§:b2Vec2;
      
      public var §,!U§:Number;
      
      public function b2WeldJointDef()
      {
         this.§9%§ = new b2Vec2();
         this.§+!"§ = new b2Vec2();
         super();
         type = b2Joint.§1!&§;
         this.§,!U§ = 0;
      }
      
      public function §#§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §8L§ = param1;
         §4!H§ = param2;
         this.§9%§.SetV(§8L§.GetLocalPoint(param3));
         this.§+!"§.SetV(§4!H§.GetLocalPoint(param3));
         this.§,!U§ = §4!H§.GetAngle() - §8L§.GetAngle();
      }
   }
}
