package §6$§
{
   import §&!L§.b2Vec2;
   import §3f§.b2Body;
   import §7!C§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §8!Z§:b2Vec2;
      
      public var §]!P§:b2Vec2;
      
      public var §?M§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§8!Z§ = new b2Vec2();
         this.§]!P§ = new b2Vec2();
         super();
         type = b2Joint.§,!P§;
         this.§?M§ = 0;
         this.maxTorque = 0;
      }
      
      public function §1!5§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §?!!§ = param1;
         §`!6§ = param2;
         this.§8!Z§.SetV(§?!!§.GetLocalPoint(param3));
         this.§]!P§.SetV(§`!6§.GetLocalPoint(param3));
      }
   }
}
