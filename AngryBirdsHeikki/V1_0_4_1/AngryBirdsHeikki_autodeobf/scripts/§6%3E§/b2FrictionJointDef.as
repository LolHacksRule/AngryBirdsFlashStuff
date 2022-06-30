package §6>§
{
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §=i§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var § i§:b2Vec2;
      
      public var §<=§:b2Vec2;
      
      public var §7"§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§ i§ = new b2Vec2();
         this.§<=§ = new b2Vec2();
         super();
         type = b2Joint.§#!'§;
         this.§7"§ = 0;
         this.maxTorque = 0;
      }
      
      public function §;!%§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §;0§ = param1;
         §+4§ = param2;
         this.§ i§.SetV(§;0§.GetLocalPoint(param3));
         this.§<=§.SetV(§+4§.GetLocalPoint(param3));
      }
   }
}
