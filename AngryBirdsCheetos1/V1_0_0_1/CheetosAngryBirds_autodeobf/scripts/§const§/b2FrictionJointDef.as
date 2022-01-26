package §const§
{
   import §_-b4§.b2internal;
   import §_-cP§.b2Vec2;
   import §try§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §_-Vd§:b2Vec2;
      
      public var §_-j3§:b2Vec2;
      
      public var §_-Ao§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§_-Vd§ = new b2Vec2();
         this.§_-j3§ = new b2Vec2();
         super();
         type = b2Joint.§_-BT§;
         this.§_-Ao§ = 0;
         this.maxTorque = 0;
      }
      
      public function §_-Qz§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-6a§ = param1;
         §_-95§ = param2;
         this.§_-Vd§.SetV(§_-6a§.GetLocalPoint(param3));
         this.§_-j3§.SetV(§_-95§.GetLocalPoint(param3));
      }
   }
}
