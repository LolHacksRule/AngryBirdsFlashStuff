package §8<§
{
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §;!,§:b2Vec2;
      
      public var §const§:b2Vec2;
      
      public var length:Number;
      
      public var §-=§:Number;
      
      public var §99§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§;!,§ = new b2Vec2();
         this.§const§ = new b2Vec2();
         super();
         type = b2Joint.§ Q§;
         this.length = 1;
         this.§-=§ = 0;
         this.§99§ = 0;
      }
      
      public function §9!K§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §,w§ = param1;
         §2h§ = param2;
         this.§;!,§.SetV(§,w§.GetLocalPoint(param3));
         this.§const§.SetV(§2h§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§-=§ = 0;
         this.§99§ = 0;
      }
   }
}
