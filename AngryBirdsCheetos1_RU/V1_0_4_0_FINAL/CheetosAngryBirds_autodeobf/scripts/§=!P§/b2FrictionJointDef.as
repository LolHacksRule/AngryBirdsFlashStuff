package §=!P§
{
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §^q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §;I§:b2Vec2;
      
      public var §-!&§:b2Vec2;
      
      public var § else§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§;I§ = new b2Vec2();
         this.§-!&§ = new b2Vec2();
         super();
         type = b2Joint.§#G§;
         this.§ else§ = 0;
         this.maxTorque = 0;
      }
      
      public function §in §(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         § !,§ = param1;
         §]z§ = param2;
         this.§;I§.SetV(§ !,§.GetLocalPoint(param3));
         this.§-!&§.SetV(§]z§.GetLocalPoint(param3));
      }
   }
}
