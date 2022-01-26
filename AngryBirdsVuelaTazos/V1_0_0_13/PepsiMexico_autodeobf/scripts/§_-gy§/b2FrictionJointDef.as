package §_-gy§
{
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §_-3r§:b2Vec2;
      
      public var §_-sR§:b2Vec2;
      
      public var §_-Fz§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§_-3r§ = new b2Vec2();
         this.§_-sR§ = new b2Vec2();
         super();
         type = b2Joint.§_-N4§;
         this.§_-Fz§ = 0;
         this.maxTorque = 0;
      }
      
      public function §_-PU§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-cw§ = param1;
         §_-U9§ = param2;
         this.§_-3r§.SetV(§_-cw§.GetLocalPoint(param3));
         this.§_-sR§.SetV(§_-U9§.GetLocalPoint(param3));
      }
   }
}
