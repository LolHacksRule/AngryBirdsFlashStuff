package §2_§
{
   import §?!C§.b2Vec2;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §0$&§:b2Vec2;
      
      public var §=#I§:b2Vec2;
      
      public var §=!g§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§0$&§ = new b2Vec2();
         this.§=#I§ = new b2Vec2();
         super();
         type = b2Joint.§6!f§;
         this.§=!g§ = 0;
         this.maxTorque = 0;
      }
      
      public function §1!W§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §;#X§ = param1;
         §`7§ = param2;
         this.§0$&§.SetV(§;#X§.GetLocalPoint(param3));
         this.§=#I§.SetV(§`7§.GetLocalPoint(param3));
      }
   }
}
