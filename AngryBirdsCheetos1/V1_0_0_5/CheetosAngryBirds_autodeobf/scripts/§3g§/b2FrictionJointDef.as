package §3g§
{
   import §;]§.b2internal;
   import §=E§.b2Vec2;
   import §?!0§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var §5!-§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§4B§ = new b2Vec2();
         this.§ !Q§ = new b2Vec2();
         super();
         type = b2Joint.§`T§;
         this.§5!-§ = 0;
         this.maxTorque = 0;
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §<§ = param1;
         §,!M§ = param2;
         this.§4B§.SetV(§<§.GetLocalPoint(param3));
         this.§ !Q§.SetV(§,!M§.GetLocalPoint(param3));
      }
   }
}
