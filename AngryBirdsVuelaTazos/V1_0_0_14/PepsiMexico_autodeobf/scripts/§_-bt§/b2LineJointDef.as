package §_-bt§
{
   import §_-4n§.b2Vec2;
   import §_-bW§.b2internal;
   import §const§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §_-5O§:b2Vec2;
      
      public var §_-q3§:b2Vec2;
      
      public var §_-P5§:b2Vec2;
      
      public var §_-Mf§:Boolean;
      
      public var §_-6m§:Number;
      
      public var §_-q0§:Number;
      
      public var §_-So§:Boolean;
      
      public var §_-p7§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§_-5O§ = new b2Vec2();
         this.§_-q3§ = new b2Vec2();
         this.§_-P5§ = new b2Vec2();
         super();
         type = b2Joint.§_-mY§;
         this.§_-P5§.Set(1,0);
         this.§_-Mf§ = false;
         this.§_-6m§ = 0;
         this.§_-q0§ = 0;
         this.§_-So§ = false;
         this.§_-p7§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §_-Vy§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-pV§ = param1;
         §_-3o§ = param2;
         this.§_-5O§ = §_-pV§.GetLocalPoint(param3);
         this.§_-q3§ = §_-3o§.GetLocalPoint(param3);
         this.§_-P5§ = §_-pV§.GetLocalVector(param4);
      }
   }
}
