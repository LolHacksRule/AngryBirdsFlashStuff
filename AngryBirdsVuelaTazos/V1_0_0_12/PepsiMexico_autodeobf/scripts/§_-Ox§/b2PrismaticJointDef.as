package §_-Ox§
{
   import §_-9z§.b2Vec2;
   import §_-EH§.b2Body;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §_-7E§:b2Vec2;
      
      public var §_-ID§:b2Vec2;
      
      public var §_-xV§:b2Vec2;
      
      public var §_-X-§:Number;
      
      public var §_-UE§:Boolean;
      
      public var §_-4c§:Number;
      
      public var §_-Px§:Number;
      
      public var §_-i3§:Boolean;
      
      public var §_-KL§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§_-7E§ = new b2Vec2();
         this.§_-ID§ = new b2Vec2();
         this.§_-xV§ = new b2Vec2();
         super();
         type = b2Joint.§_-x6§;
         this.§_-xV§.Set(1,0);
         this.§_-X-§ = 0;
         this.§_-UE§ = false;
         this.§_-4c§ = 0;
         this.§_-Px§ = 0;
         this.§_-i3§ = false;
         this.§_-KL§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §_-fn§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-lk§ = param1;
         §_-OV§ = param2;
         this.§_-7E§ = §_-lk§.GetLocalPoint(param3);
         this.§_-ID§ = §_-OV§.GetLocalPoint(param3);
         this.§_-xV§ = §_-lk§.GetLocalVector(param4);
         this.§_-X-§ = §_-OV§.GetAngle() - §_-lk§.GetAngle();
      }
   }
}
