package §const§
{
   import §_-b4§.b2internal;
   import §_-cP§.b2Vec2;
   import §try§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §_-Vd§:b2Vec2;
      
      public var §_-j3§:b2Vec2;
      
      public var §_-dq§:b2Vec2;
      
      public var §_-hs§:Number;
      
      public var §_-XG§:Boolean;
      
      public var §_-0V§:Number;
      
      public var §_-vo§:Number;
      
      public var §_-uC§:Boolean;
      
      public var §_-69§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§_-Vd§ = new b2Vec2();
         this.§_-j3§ = new b2Vec2();
         this.§_-dq§ = new b2Vec2();
         super();
         type = b2Joint.§_-gB§;
         this.§_-dq§.Set(1,0);
         this.§_-hs§ = 0;
         this.§_-XG§ = false;
         this.§_-0V§ = 0;
         this.§_-vo§ = 0;
         this.§_-uC§ = false;
         this.§_-69§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §_-Qz§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-6a§ = param1;
         §_-95§ = param2;
         this.§_-Vd§ = §_-6a§.GetLocalPoint(param3);
         this.§_-j3§ = §_-95§.GetLocalPoint(param3);
         this.§_-dq§ = §_-6a§.GetLocalVector(param4);
         this.§_-hs§ = §_-95§.GetAngle() - §_-6a§.GetAngle();
      }
   }
}
