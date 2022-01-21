package §!4§
{
   import §&x§.b2Body;
   import §0,§.b2Vec2;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §3_§:b2Vec2;
      
      public var §-<§:b2Vec2;
      
      public var §54§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§3_§ = new b2Vec2();
         this.§-<§ = new b2Vec2();
         super();
         type = b2Joint.§+!R§;
         this.§54§ = 0;
         this.maxTorque = 0;
      }
      
      public function §,!p§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §@!F§ = param1;
         §9!T§ = param2;
         this.§3_§.SetV(§@!F§.GetLocalPoint(param3));
         this.§-<§.SetV(§9!T§.GetLocalPoint(param3));
      }
   }
}
