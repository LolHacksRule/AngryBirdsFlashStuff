package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §_-uE§:b2Vec2;
      
      public var §_-L5§:b2Vec2;
      
      public var §_-Rk§:Number;
      
      public var §_-fG§:Boolean;
      
      public var §_-Vw§:Number;
      
      public var §_-13§:Number;
      
      public var §_-HV§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §_-ne§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§_-uE§ = new b2Vec2();
         this.§_-L5§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§_-uE§.Set(0,0);
         this.§_-L5§.Set(0,0);
         this.§_-Rk§ = 0;
         this.§_-Vw§ = 0;
         this.§_-13§ = 0;
         this.§_-ne§ = 0;
         this.motorSpeed = 0;
         this.§_-fG§ = false;
         this.§_-HV§ = false;
      }
      
      public function §_-t1§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-33§ = param1;
         §_-Pt§ = param2;
         this.§_-uE§ = §_-33§.GetLocalPoint(param3);
         this.§_-L5§ = §_-Pt§.GetLocalPoint(param3);
         this.§_-Rk§ = §_-Pt§.GetAngle() - §_-33§.GetAngle();
      }
   }
}
