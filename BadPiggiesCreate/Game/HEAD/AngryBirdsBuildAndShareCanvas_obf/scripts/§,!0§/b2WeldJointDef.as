package §,!0§
{
   import §"J§.b2Body;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §3!&§:b2Vec2;
      
      public var §2!P§:b2Vec2;
      
      public var § "2§:Number;
      
      public function b2WeldJointDef()
      {
         this.§3!&§ = new b2Vec2();
         this.§2!P§ = new b2Vec2();
         super();
         type = b2Joint.§'7§;
         this.§ "2§ = 0;
      }
      
      public function §&!§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         § !T§ = param1;
         §import§ = param2;
         this.§3!&§.SetV(§ !T§.GetLocalPoint(param3));
         this.§2!P§.SetV(§import§.GetLocalPoint(param3));
         this.§ "2§ = §import§.GetAngle() - § !T§.GetAngle();
      }
   }
}
