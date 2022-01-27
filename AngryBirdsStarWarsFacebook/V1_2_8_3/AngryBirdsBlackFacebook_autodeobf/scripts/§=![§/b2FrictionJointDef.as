package §=![§
{
   import §7!I§.b2internal;
   import §7"A§.b2Vec2;
   import §>"_§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §?"y§:b2Vec2;
      
      public var §0d§:b2Vec2;
      
      public var §7"a§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§?"y§ = new b2Vec2();
         this.§0d§ = new b2Vec2();
         super();
         type = b2Joint.§?!q§;
         this.§7"a§ = 0;
         this.maxTorque = 0;
      }
      
      public function §>D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §5"I§ = param1;
         §[!K§ = param2;
         this.§?"y§.SetV(§5"I§.GetLocalPoint(param3));
         this.§0d§.SetV(§[!K§.GetLocalPoint(param3));
      }
   }
}
