package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §_-F6§:b2Vec2;
      
      public var §_-0Bf§:b2Vec2;
      
      public var §_-IW§:Number;
      
      public var §_-6W§:Boolean;
      
      public var §_-Ch§:Number;
      
      public var §_-KH§:Number;
      
      public var §_-1g§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §_-dv§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§_-F6§ = new b2Vec2();
         this.§_-0Bf§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§_-F6§.Set(0,0);
         this.§_-0Bf§.Set(0,0);
         this.§_-IW§ = 0;
         this.§_-Ch§ = 0;
         this.§_-KH§ = 0;
         this.§_-dv§ = 0;
         this.motorSpeed = 0;
         this.§_-6W§ = false;
         this.§_-1g§ = false;
      }
      
      public function §_-bL§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-ZR§ = param1;
         §_-7b§ = param2;
         this.§_-F6§ = §_-ZR§.GetLocalPoint(param3);
         this.§_-0Bf§ = §_-7b§.GetLocalPoint(param3);
         this.§_-IW§ = §_-7b§.GetAngle() - §_-ZR§.GetAngle();
      }
   }
}
