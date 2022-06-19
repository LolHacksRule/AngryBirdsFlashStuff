package §_-ol§
{
   import §_-43§.b2Body;
   import §_-F2§.b2Vec2;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §_-lj§:b2Vec2;
      
      public var §_-zW§:b2Vec2;
      
      public var §_-Ra§:b2Vec2;
      
      public var §_-oX§:Number;
      
      public var §_-sR§:Boolean;
      
      public var §_-HQ§:Number;
      
      public var §_-6a§:Number;
      
      public var §_-zc§:Boolean;
      
      public var §_-ki§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§_-lj§ = new b2Vec2();
         this.§_-zW§ = new b2Vec2();
         this.§_-Ra§ = new b2Vec2();
         super();
         type = b2Joint.§use §;
         this.§_-Ra§.Set(1,0);
         this.§_-oX§ = 0;
         this.§_-sR§ = false;
         this.§_-HQ§ = 0;
         this.§_-6a§ = 0;
         this.§_-zc§ = false;
         this.§_-ki§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §_-M0§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-4f§ = param1;
         §_-FU§ = param2;
         this.§_-lj§ = §_-4f§.GetLocalPoint(param3);
         this.§_-zW§ = §_-FU§.GetLocalPoint(param3);
         this.§_-Ra§ = §_-4f§.GetLocalVector(param4);
         this.§_-oX§ = §_-FU§.GetAngle() - §_-4f§.GetAngle();
      }
   }
}
