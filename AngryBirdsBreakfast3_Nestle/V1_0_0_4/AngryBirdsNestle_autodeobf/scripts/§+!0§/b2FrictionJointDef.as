package §+!0§
{
   import §-%§.b2Vec2;
   import §9"5§.b2Body;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §1"&§:b2Vec2;
      
      public var §-m§:b2Vec2;
      
      public var §?"5§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§1"&§ = new b2Vec2();
         this.§-m§ = new b2Vec2();
         super();
         type = b2Joint.§""0§;
         this.§?"5§ = 0;
         this.maxTorque = 0;
      }
      
      public function §,n§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §6z§ = param1;
         §@! § = param2;
         this.§1"&§.SetV(§6z§.GetLocalPoint(param3));
         this.§-m§.SetV(§@! §.GetLocalPoint(param3));
      }
   }
}
