package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §_-uE§:b2Vec2;
      
      public var §_-L5§:b2Vec2;
      
      public var §_-qZ§:b2Vec2;
      
      public var §_-Rk§:Number;
      
      public var §_-fG§:Boolean;
      
      public var §_-7G§:Number;
      
      public var §_-BR§:Number;
      
      public var §_-HV§:Boolean;
      
      public var §_-mu§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§_-uE§ = new b2Vec2();
         this.§_-L5§ = new b2Vec2();
         this.§_-qZ§ = new b2Vec2();
         super();
         type = b2Joint.§_-pW§;
         this.§_-qZ§.Set(1,0);
         this.§_-Rk§ = 0;
         this.§_-fG§ = false;
         this.§_-7G§ = 0;
         this.§_-BR§ = 0;
         this.§_-HV§ = false;
         this.§_-mu§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §_-t1§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-33§ = param1;
         §_-Pt§ = param2;
         this.§_-uE§ = §_-33§.GetLocalPoint(param3);
         this.§_-L5§ = §_-Pt§.GetLocalPoint(param3);
         this.§_-qZ§ = §_-33§.GetLocalVector(param4);
         this.§_-Rk§ = §_-Pt§.GetAngle() - §_-33§.GetAngle();
      }
   }
}
