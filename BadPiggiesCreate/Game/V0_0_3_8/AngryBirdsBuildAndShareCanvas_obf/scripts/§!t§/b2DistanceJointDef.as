package §!t§
{
   import §8,§.b2internal;
   import §9v§.b2Vec2;
   import §?!E§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var § ;§:b2Vec2;
      
      public var §8!Z§:b2Vec2;
      
      public var length:Number;
      
      public var §"]§:Number;
      
      public var §2!_§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§ ;§ = new b2Vec2();
         this.§8!Z§ = new b2Vec2();
         super();
         type = b2Joint.§3!l§;
         this.length = 1;
         this.§"]§ = 0;
         this.§2!_§ = 0;
      }
      
      public function §`!&§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §["%§ = param1;
         §`!<§ = param2;
         this.§ ;§.SetV(§["%§.GetLocalPoint(param3));
         this.§8!Z§.SetV(§`!<§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§"]§ = 0;
         this.§2!_§ = 0;
      }
   }
}
