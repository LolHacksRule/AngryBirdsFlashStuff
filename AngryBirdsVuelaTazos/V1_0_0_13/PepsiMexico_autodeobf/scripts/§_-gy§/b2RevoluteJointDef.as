package §_-gy§
{
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §_-3r§:b2Vec2;
      
      public var §_-sR§:b2Vec2;
      
      public var §_-dt§:Number;
      
      public var §_-yk§:Boolean;
      
      public var §_-ct§:Number;
      
      public var §_-UP§:Number;
      
      public var §_-ff§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §_-1C§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§_-3r§ = new b2Vec2();
         this.§_-sR§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§_-3r§.Set(0,0);
         this.§_-sR§.Set(0,0);
         this.§_-dt§ = 0;
         this.§_-ct§ = 0;
         this.§_-UP§ = 0;
         this.§_-1C§ = 0;
         this.motorSpeed = 0;
         this.§_-yk§ = false;
         this.§_-ff§ = false;
      }
      
      public function §_-PU§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-cw§ = param1;
         §_-U9§ = param2;
         this.§_-3r§ = §_-cw§.GetLocalPoint(param3);
         this.§_-sR§ = §_-U9§.GetLocalPoint(param3);
         this.§_-dt§ = §_-U9§.GetAngle() - §_-cw§.GetAngle();
      }
   }
}
