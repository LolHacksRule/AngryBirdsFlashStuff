package §7!3§
{
   import §+d§.b2Body;
   import §6%§.b2internal;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var § 3§:b2Vec2;
      
      public var §&!-§:b2Vec2;
      
      public var length:Number;
      
      public var §^!e§:Number;
      
      public var §4!G§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§ 3§ = new b2Vec2();
         this.§&!-§ = new b2Vec2();
         super();
         type = b2Joint.§2!T§;
         this.length = 1;
         this.§^!e§ = 0;
         this.§4!G§ = 0;
      }
      
      public function §9!M§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §1!V§ = param1;
         §;!?§ = param2;
         this.§ 3§.SetV(§1!V§.GetLocalPoint(param3));
         this.§&!-§.SetV(§;!?§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§^!e§ = 0;
         this.§4!G§ = 0;
      }
   }
}
