package §_-bt§
{
   import §_-4n§.b2Vec2;
   import §_-bW§.b2internal;
   import §const§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §_-5O§:b2Vec2;
      
      public var §_-q3§:b2Vec2;
      
      public var §_-Xr§:Number;
      
      public var §_-Mf§:Boolean;
      
      public var §_-mD§:Number;
      
      public var §_-DZ§:Number;
      
      public var §_-So§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §_-uq§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§_-5O§ = new b2Vec2();
         this.§_-q3§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§_-5O§.Set(0,0);
         this.§_-q3§.Set(0,0);
         this.§_-Xr§ = 0;
         this.§_-mD§ = 0;
         this.§_-DZ§ = 0;
         this.§_-uq§ = 0;
         this.motorSpeed = 0;
         this.§_-Mf§ = false;
         this.§_-So§ = false;
      }
      
      public function §_-Vy§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-pV§ = param1;
         §_-3o§ = param2;
         this.§_-5O§ = §_-pV§.GetLocalPoint(param3);
         this.§_-q3§ = §_-3o§.GetLocalPoint(param3);
         this.§_-Xr§ = §_-3o§.GetAngle() - §_-pV§.GetAngle();
      }
   }
}
