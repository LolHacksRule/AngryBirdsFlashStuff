package §_-Ox§
{
   import §_-9z§.b2Vec2;
   import §_-EH§.b2Body;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §_-7E§:b2Vec2;
      
      public var §_-ID§:b2Vec2;
      
      public var §_-li§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§_-7E§ = new b2Vec2();
         this.§_-ID§ = new b2Vec2();
         super();
         type = b2Joint.§_-ZC§;
         this.§_-li§ = 0;
         this.maxTorque = 0;
      }
      
      public function §_-fn§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-lk§ = param1;
         §_-OV§ = param2;
         this.§_-7E§.SetV(§_-lk§.GetLocalPoint(param3));
         this.§_-ID§.SetV(§_-OV§.GetLocalPoint(param3));
      }
   }
}
