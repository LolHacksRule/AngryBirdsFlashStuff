package §4"$§
{
   import §&!M§.b2Body;
   import §3!t§.b2Vec2;
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var § 3§:b2Vec2;
      
      public var § '§:b2Vec2;
      
      public var length:Number;
      
      public var §&s§:Number;
      
      public var §9!]§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§ 3§ = new b2Vec2();
         this.§ '§ = new b2Vec2();
         super();
         type = b2Joint.§@J§;
         this.length = 1;
         this.§&s§ = 0;
         this.§9!]§ = 0;
      }
      
      public function §[z§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §>"$§ = param1;
         §%"1§ = param2;
         this.§ 3§.SetV(§>"$§.GetLocalPoint(param3));
         this.§ '§.SetV(§%"1§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§&s§ = 0;
         this.§9!]§ = 0;
      }
   }
}
