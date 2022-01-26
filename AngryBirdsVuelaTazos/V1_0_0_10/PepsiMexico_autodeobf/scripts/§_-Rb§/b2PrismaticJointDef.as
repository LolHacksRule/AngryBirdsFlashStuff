package §_-Rb§
{
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2Body;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §_-24§:b2Vec2;
      
      public var §_-2Z§:b2Vec2;
      
      public var §_-h4§:b2Vec2;
      
      public var §_-Hj§:Number;
      
      public var §_-Qa§:Boolean;
      
      public var §_-kj§:Number;
      
      public var §_-Ai§:Number;
      
      public var §_-ff§:Boolean;
      
      public var §_-CZ§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§_-24§ = new b2Vec2();
         this.§_-2Z§ = new b2Vec2();
         this.§_-h4§ = new b2Vec2();
         super();
         type = b2Joint.§_-oA§;
         this.§_-h4§.Set(1,0);
         this.§_-Hj§ = 0;
         this.§_-Qa§ = false;
         this.§_-kj§ = 0;
         this.§_-Ai§ = 0;
         this.§_-ff§ = false;
         this.§_-CZ§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §_-E0§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-Ay§ = param1;
         §_-vo§ = param2;
         this.§_-24§ = §_-Ay§.GetLocalPoint(param3);
         this.§_-2Z§ = §_-vo§.GetLocalPoint(param3);
         this.§_-h4§ = §_-Ay§.GetLocalVector(param4);
         this.§_-Hj§ = §_-vo§.GetAngle() - §_-Ay§.GetAngle();
      }
   }
}
