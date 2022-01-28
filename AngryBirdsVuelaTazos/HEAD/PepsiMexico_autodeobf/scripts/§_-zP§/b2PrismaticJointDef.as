package §_-zP§
{
   import §_-bA§.b2Vec2;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §_-Ys§:b2Vec2;
      
      public var §_-8p§:b2Vec2;
      
      public var §_-KT§:b2Vec2;
      
      public var §_-51§:Number;
      
      public var §_-LR§:Boolean;
      
      public var §_-1h§:Number;
      
      public var §_-dU§:Number;
      
      public var §_-FI§:Boolean;
      
      public var §_-cG§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§_-Ys§ = new b2Vec2();
         this.§_-8p§ = new b2Vec2();
         this.§_-KT§ = new b2Vec2();
         super();
         type = b2Joint.§_-Ci§;
         this.§_-KT§.Set(1,0);
         this.§_-51§ = 0;
         this.§_-LR§ = false;
         this.§_-1h§ = 0;
         this.§_-dU§ = 0;
         this.§_-FI§ = false;
         this.§_-cG§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §_-95§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-wE§ = param1;
         §_-3J§ = param2;
         this.§_-Ys§ = §_-wE§.GetLocalPoint(param3);
         this.§_-8p§ = §_-3J§.GetLocalPoint(param3);
         this.§_-KT§ = §_-wE§.GetLocalVector(param4);
         this.§_-51§ = §_-3J§.GetAngle() - §_-wE§.GetAngle();
      }
   }
}
