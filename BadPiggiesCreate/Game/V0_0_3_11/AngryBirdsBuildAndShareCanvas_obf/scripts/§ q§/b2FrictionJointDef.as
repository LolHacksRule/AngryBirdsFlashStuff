package § q§
{
   import §+L§.b2Vec2;
   import §7z§.b2Body;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §[!L§:b2Vec2;
      
      public var §8!^§:b2Vec2;
      
      public var §2D§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§[!L§ = new b2Vec2();
         this.§8!^§ = new b2Vec2();
         super();
         type = b2Joint.§>!u§;
         this.§2D§ = 0;
         this.maxTorque = 0;
      }
      
      public function §5$§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §@]§ = param1;
         §3@§ = param2;
         this.§[!L§.SetV(§@]§.GetLocalPoint(param3));
         this.§8!^§.SetV(§3@§.GetLocalPoint(param3));
      }
   }
}
