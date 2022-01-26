package §_-bt§
{
   import §_-4n§.b2Vec2;
   import §_-bW§.b2internal;
   import §const§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §_-5O§:b2Vec2;
      
      public var §_-q3§:b2Vec2;
      
      public var §_-Xr§:Number;
      
      public function b2WeldJointDef()
      {
         this.§_-5O§ = new b2Vec2();
         this.§_-q3§ = new b2Vec2();
         super();
         type = b2Joint.§_-t7§;
         this.§_-Xr§ = 0;
      }
      
      public function §_-Vy§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-pV§ = param1;
         §_-3o§ = param2;
         this.§_-5O§.SetV(§_-pV§.GetLocalPoint(param3));
         this.§_-q3§.SetV(§_-3o§.GetLocalPoint(param3));
         this.§_-Xr§ = §_-3o§.GetAngle() - §_-pV§.GetAngle();
      }
   }
}
