package §_-Ox§
{
   import §_-9z§.b2Vec2;
   import §_-EH§.b2Body;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §_-7E§:b2Vec2;
      
      public var §_-ID§:b2Vec2;
      
      public var §_-X-§:Number;
      
      public var §_-UE§:Boolean;
      
      public var §_-Rf§:Number;
      
      public var §_-aA§:Number;
      
      public var §_-i3§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §_-mF§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§_-7E§ = new b2Vec2();
         this.§_-ID§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§_-7E§.Set(0,0);
         this.§_-ID§.Set(0,0);
         this.§_-X-§ = 0;
         this.§_-Rf§ = 0;
         this.§_-aA§ = 0;
         this.§_-mF§ = 0;
         this.motorSpeed = 0;
         this.§_-UE§ = false;
         this.§_-i3§ = false;
      }
      
      public function §_-fn§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-lk§ = param1;
         §_-OV§ = param2;
         this.§_-7E§ = §_-lk§.GetLocalPoint(param3);
         this.§_-ID§ = §_-OV§.GetLocalPoint(param3);
         this.§_-X-§ = §_-OV§.GetAngle() - §_-lk§.GetAngle();
      }
   }
}
