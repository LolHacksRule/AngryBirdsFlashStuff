package §!6§
{
   import § !5§.b2internal;
   import §+,§.b2Vec2;
   import §[W§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §2f§:b2Vec2;
      
      public var §@n§:b2Vec2;
      
      public var §7Z§:Number;
      
      public function b2WeldJointDef()
      {
         this.§2f§ = new b2Vec2();
         this.§@n§ = new b2Vec2();
         super();
         type = b2Joint.§+?§;
         this.§7Z§ = 0;
      }
      
      public function §+!R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §-[§ = param1;
         §>N§ = param2;
         this.§2f§.SetV(§-[§.GetLocalPoint(param3));
         this.§@n§.SetV(§>N§.GetLocalPoint(param3));
         this.§7Z§ = §>N§.GetAngle() - §-[§.GetAngle();
      }
   }
}
