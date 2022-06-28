package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §_-F6§:b2Vec2;
      
      public var §_-0Bf§:b2Vec2;
      
      public var §_-IW§:Number;
      
      public function b2WeldJointDef()
      {
         this.§_-F6§ = new b2Vec2();
         this.§_-0Bf§ = new b2Vec2();
         super();
         type = b2Joint.§_-0A2§;
         this.§_-IW§ = 0;
      }
      
      public function §_-bL§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-ZR§ = param1;
         §_-7b§ = param2;
         this.§_-F6§.SetV(§_-ZR§.GetLocalPoint(param3));
         this.§_-0Bf§.SetV(§_-7b§.GetLocalPoint(param3));
         this.§_-IW§ = §_-7b§.GetAngle() - §_-ZR§.GetAngle();
      }
   }
}
