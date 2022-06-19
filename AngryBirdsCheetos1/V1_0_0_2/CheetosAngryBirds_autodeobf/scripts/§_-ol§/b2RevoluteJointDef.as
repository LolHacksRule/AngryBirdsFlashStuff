package §_-ol§
{
   import §_-43§.b2Body;
   import §_-F2§.b2Vec2;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §_-lj§:b2Vec2;
      
      public var §_-zW§:b2Vec2;
      
      public var §_-oX§:Number;
      
      public var §_-sR§:Boolean;
      
      public var §_-0-A§:Number;
      
      public var §_-Ro§:Number;
      
      public var §_-zc§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §_-T-§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§_-lj§ = new b2Vec2();
         this.§_-zW§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§_-lj§.Set(0,0);
         this.§_-zW§.Set(0,0);
         this.§_-oX§ = 0;
         this.§_-0-A§ = 0;
         this.§_-Ro§ = 0;
         this.§_-T-§ = 0;
         this.motorSpeed = 0;
         this.§_-sR§ = false;
         this.§_-zc§ = false;
      }
      
      public function §_-M0§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-4f§ = param1;
         §_-FU§ = param2;
         this.§_-lj§ = §_-4f§.GetLocalPoint(param3);
         this.§_-zW§ = §_-FU§.GetLocalPoint(param3);
         this.§_-oX§ = §_-FU§.GetAngle() - §_-4f§.GetAngle();
      }
   }
}
