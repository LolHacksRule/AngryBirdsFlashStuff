package §7!3§
{
   import §+d§.b2Body;
   import §6%§.b2internal;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var § 3§:b2Vec2;
      
      public var §&!-§:b2Vec2;
      
      public var §0!L§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§ 3§ = new b2Vec2();
         this.§&!-§ = new b2Vec2();
         super();
         type = b2Joint.§%$§;
         this.§0!L§ = 0;
         this.maxTorque = 0;
      }
      
      public function §9!M§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §1!V§ = param1;
         §;!?§ = param2;
         this.§ 3§.SetV(§1!V§.GetLocalPoint(param3));
         this.§&!-§.SetV(§;!?§.GetLocalPoint(param3));
      }
   }
}
