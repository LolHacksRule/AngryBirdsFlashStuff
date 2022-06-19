package §const§
{
   import §_-b4§.b2internal;
   import §_-cP§.b2Vec2;
   import §try§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §_-Vd§:b2Vec2;
      
      public var §_-j3§:b2Vec2;
      
      public var §_-hs§:Number;
      
      public var §_-XG§:Boolean;
      
      public var § in§:Number;
      
      public var §_-uu§:Number;
      
      public var §_-uC§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §_-dA§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§_-Vd§ = new b2Vec2();
         this.§_-j3§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§_-Vd§.Set(0,0);
         this.§_-j3§.Set(0,0);
         this.§_-hs§ = 0;
         this.§ in§ = 0;
         this.§_-uu§ = 0;
         this.§_-dA§ = 0;
         this.motorSpeed = 0;
         this.§_-XG§ = false;
         this.§_-uC§ = false;
      }
      
      public function §_-Qz§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-6a§ = param1;
         §_-95§ = param2;
         this.§_-Vd§ = §_-6a§.GetLocalPoint(param3);
         this.§_-j3§ = §_-95§.GetLocalPoint(param3);
         this.§_-hs§ = §_-95§.GetAngle() - §_-6a§.GetAngle();
      }
   }
}
