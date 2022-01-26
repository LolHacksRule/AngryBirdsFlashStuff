package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §_-Kz§:b2Vec2;
      
      public var §_-Dq§:b2Vec2;
      
      public var §_-O9§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§_-Kz§ = new b2Vec2();
         this.§_-Dq§ = new b2Vec2();
         super();
         type = b2Joint.§_-oH§;
         this.§_-O9§ = 0;
         this.maxTorque = 0;
      }
      
      public function §_-lc§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-dL§ = param1;
         §_-h1§ = param2;
         this.§_-Kz§.SetV(§_-dL§.GetLocalPoint(param3));
         this.§_-Dq§.SetV(§_-h1§.GetLocalPoint(param3));
      }
   }
}
