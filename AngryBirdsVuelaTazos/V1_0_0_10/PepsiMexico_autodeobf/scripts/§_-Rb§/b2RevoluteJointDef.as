package §_-Rb§
{
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2Body;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §_-24§:b2Vec2;
      
      public var §_-2Z§:b2Vec2;
      
      public var §_-Hj§:Number;
      
      public var §_-Qa§:Boolean;
      
      public var §_-DK§:Number;
      
      public var §_-Em§:Number;
      
      public var §_-ff§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §_-Sx§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§_-24§ = new b2Vec2();
         this.§_-2Z§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§_-24§.Set(0,0);
         this.§_-2Z§.Set(0,0);
         this.§_-Hj§ = 0;
         this.§_-DK§ = 0;
         this.§_-Em§ = 0;
         this.§_-Sx§ = 0;
         this.motorSpeed = 0;
         this.§_-Qa§ = false;
         this.§_-ff§ = false;
      }
      
      public function §_-E0§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-Ay§ = param1;
         §_-vo§ = param2;
         this.§_-24§ = §_-Ay§.GetLocalPoint(param3);
         this.§_-2Z§ = §_-vo§.GetLocalPoint(param3);
         this.§_-Hj§ = §_-vo§.GetAngle() - §_-Ay§.GetAngle();
      }
   }
}
