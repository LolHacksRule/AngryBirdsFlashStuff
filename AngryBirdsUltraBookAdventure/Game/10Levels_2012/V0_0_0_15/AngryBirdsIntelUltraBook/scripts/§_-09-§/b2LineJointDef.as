package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §_-F6§:b2Vec2;
      
      public var §_-0Bf§:b2Vec2;
      
      public var §_-v5§:b2Vec2;
      
      public var §_-6W§:Boolean;
      
      public var §_-7p§:Number;
      
      public var §_-1F§:Number;
      
      public var §_-1g§:Boolean;
      
      public var §_-2E§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§_-F6§ = new b2Vec2();
         this.§_-0Bf§ = new b2Vec2();
         this.§_-v5§ = new b2Vec2();
         super();
         type = b2Joint.§_-z6§;
         this.§_-v5§.Set(1,0);
         this.§_-6W§ = false;
         this.§_-7p§ = 0;
         this.§_-1F§ = 0;
         this.§_-1g§ = false;
         this.§_-2E§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §_-bL§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-ZR§ = param1;
         §_-7b§ = param2;
         this.§_-F6§ = §_-ZR§.GetLocalPoint(param3);
         this.§_-0Bf§ = §_-7b§.GetLocalPoint(param3);
         this.§_-v5§ = §_-ZR§.GetLocalVector(param4);
      }
   }
}
