package §_-Rb§
{
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2Body;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §_-24§:b2Vec2;
      
      public var §_-2Z§:b2Vec2;
      
      public var §_-GC§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§_-24§ = new b2Vec2();
         this.§_-2Z§ = new b2Vec2();
         super();
         type = b2Joint.§_-1u§;
         this.§_-GC§ = 0;
         this.maxTorque = 0;
      }
      
      public function §_-E0§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-Ay§ = param1;
         §_-vo§ = param2;
         this.§_-24§.SetV(§_-Ay§.GetLocalPoint(param3));
         this.§_-2Z§.SetV(§_-vo§.GetLocalPoint(param3));
      }
   }
}
