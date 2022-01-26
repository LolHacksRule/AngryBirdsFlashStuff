package §_-ol§
{
   import §_-43§.b2Body;
   import §_-F2§.b2Vec2;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §_-lj§:b2Vec2;
      
      public var §_-zW§:b2Vec2;
      
      public var §_-5J§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§_-lj§ = new b2Vec2();
         this.§_-zW§ = new b2Vec2();
         super();
         type = b2Joint.§_-z1§;
         this.§_-5J§ = 0;
         this.maxTorque = 0;
      }
      
      public function §_-M0§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-4f§ = param1;
         §_-FU§ = param2;
         this.§_-lj§.SetV(§_-4f§.GetLocalPoint(param3));
         this.§_-zW§.SetV(§_-FU§.GetLocalPoint(param3));
      }
   }
}
