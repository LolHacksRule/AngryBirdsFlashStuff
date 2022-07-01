package §;!r§
{
   import §,v§.b2Body;
   import §-!A§.b2Vec2;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §5S§:b2Vec2;
      
      public var §-!9§:b2Vec2;
      
      public var §'7§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§5S§ = new b2Vec2();
         this.§-!9§ = new b2Vec2();
         super();
         type = b2Joint.§>t§;
         this.§'7§ = 0;
         this.maxTorque = 0;
      }
      
      public function §"!o§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §@!`§ = param1;
         §@$§ = param2;
         this.§5S§.SetV(§@!`§.GetLocalPoint(param3));
         this.§-!9§.SetV(§@$§.GetLocalPoint(param3));
      }
   }
}
