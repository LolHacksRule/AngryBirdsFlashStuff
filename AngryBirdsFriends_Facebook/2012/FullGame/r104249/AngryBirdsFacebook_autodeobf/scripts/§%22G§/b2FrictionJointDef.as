package §"G§
{
   import §&!Y§.b2Body;
   import §7F§.b2Vec2;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §!d§:b2Vec2;
      
      public var §;!9§:b2Vec2;
      
      public var §#9§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§!d§ = new b2Vec2();
         this.§;!9§ = new b2Vec2();
         super();
         type = b2Joint.§6?§;
         this.§#9§ = 0;
         this.maxTorque = 0;
      }
      
      public function §,!9§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §4"?§ = param1;
         §+H§ = param2;
         this.§!d§.SetV(§4"?§.GetLocalPoint(param3));
         this.§;!9§.SetV(§+H§.GetLocalPoint(param3));
      }
   }
}
