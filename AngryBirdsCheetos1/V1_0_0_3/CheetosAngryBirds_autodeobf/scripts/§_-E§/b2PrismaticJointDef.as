package §_-E§
{
   import §_-00B§.b2Body;
   import §_-Jf§.b2internal;
   import §_-Vn§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §_-4N§:b2Vec2;
      
      public var §_-nR§:b2Vec2;
      
      public var §_-yc§:b2Vec2;
      
      public var §_-L7§:Number;
      
      public var §_-MB§:Boolean;
      
      public var §_-fX§:Number;
      
      public var §_-Xb§:Number;
      
      public var §_-77§:Boolean;
      
      public var §_-lm§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§_-4N§ = new b2Vec2();
         this.§_-nR§ = new b2Vec2();
         this.§_-yc§ = new b2Vec2();
         super();
         type = b2Joint.§_-r2§;
         this.§_-yc§.Set(1,0);
         this.§_-L7§ = 0;
         this.§_-MB§ = false;
         this.§_-fX§ = 0;
         this.§_-Xb§ = 0;
         this.§_-77§ = false;
         this.§_-lm§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §_-yN§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-c7§ = param1;
         §_-60§ = param2;
         this.§_-4N§ = §_-c7§.GetLocalPoint(param3);
         this.§_-nR§ = §_-60§.GetLocalPoint(param3);
         this.§_-yc§ = §_-c7§.GetLocalVector(param4);
         this.§_-L7§ = §_-60§.GetAngle() - §_-c7§.GetAngle();
      }
   }
}
