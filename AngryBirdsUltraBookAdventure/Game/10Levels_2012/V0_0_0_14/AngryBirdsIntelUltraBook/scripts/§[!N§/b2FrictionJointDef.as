package §[!N§
{
   import § D§.b2Body;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §9!9§:b2Vec2;
      
      public var §^G§:b2Vec2;
      
      public var §4!G§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§9!9§ = new b2Vec2();
         this.§^G§ = new b2Vec2();
         super();
         type = b2Joint.§8b§;
         this.§4!G§ = 0;
         this.maxTorque = 0;
      }
      
      public function §7R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §-!O§ = param1;
         §3!u§ = param2;
         this.§9!9§.SetV(§-!O§.GetLocalPoint(param3));
         this.§^G§.SetV(§3!u§.GetLocalPoint(param3));
      }
   }
}
