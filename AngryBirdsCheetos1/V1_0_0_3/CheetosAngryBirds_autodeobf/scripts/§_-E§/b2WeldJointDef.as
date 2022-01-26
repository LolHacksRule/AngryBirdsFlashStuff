package §_-E§
{
   import §_-00B§.b2Body;
   import §_-Jf§.b2internal;
   import §_-Vn§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §_-4N§:b2Vec2;
      
      public var §_-nR§:b2Vec2;
      
      public var §_-L7§:Number;
      
      public function b2WeldJointDef()
      {
         this.§_-4N§ = new b2Vec2();
         this.§_-nR§ = new b2Vec2();
         super();
         type = b2Joint.§_-7C§;
         this.§_-L7§ = 0;
      }
      
      public function §_-yN§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-c7§ = param1;
         §_-60§ = param2;
         this.§_-4N§.SetV(§_-c7§.GetLocalPoint(param3));
         this.§_-nR§.SetV(§_-60§.GetLocalPoint(param3));
         this.§_-L7§ = §_-60§.GetAngle() - §_-c7§.GetAngle();
      }
   }
}
