package §"d§
{
   import §3!R§.b2Body;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §@b§:b2Vec2;
      
      public var §=i§:b2Vec2;
      
      public var § N§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§@b§ = new b2Vec2();
         this.§=i§ = new b2Vec2();
         super();
         type = b2Joint.§#F§;
         this.§ N§ = 0;
         this.maxTorque = 0;
      }
      
      public function §';§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §&]§ = param1;
         §+0§ = param2;
         this.§@b§.SetV(§&]§.GetLocalPoint(param3));
         this.§=i§.SetV(§+0§.GetLocalPoint(param3));
      }
   }
}
