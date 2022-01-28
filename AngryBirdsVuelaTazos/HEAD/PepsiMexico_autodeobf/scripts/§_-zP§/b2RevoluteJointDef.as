package §_-zP§
{
   import §_-bA§.b2Vec2;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §_-Ys§:b2Vec2;
      
      public var §_-8p§:b2Vec2;
      
      public var §_-51§:Number;
      
      public var §_-LR§:Boolean;
      
      public var §_-nU§:Number;
      
      public var §_-4o§:Number;
      
      public var §_-FI§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §_-bd§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§_-Ys§ = new b2Vec2();
         this.§_-8p§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§_-Ys§.Set(0,0);
         this.§_-8p§.Set(0,0);
         this.§_-51§ = 0;
         this.§_-nU§ = 0;
         this.§_-4o§ = 0;
         this.§_-bd§ = 0;
         this.motorSpeed = 0;
         this.§_-LR§ = false;
         this.§_-FI§ = false;
      }
      
      public function §_-95§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-wE§ = param1;
         §_-3J§ = param2;
         this.§_-Ys§ = §_-wE§.GetLocalPoint(param3);
         this.§_-8p§ = §_-3J§.GetLocalPoint(param3);
         this.§_-51§ = §_-3J§.GetAngle() - §_-wE§.GetAngle();
      }
   }
}
