package § !V§
{
   import §+S§.b2Body;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §!2§:b2Vec2;
      
      public var § !c§:b2Vec2;
      
      public var §+!H§:Number;
      
      public function b2WeldJointDef()
      {
         this.§!2§ = new b2Vec2();
         this.§ !c§ = new b2Vec2();
         super();
         type = b2Joint.§>_§;
         this.§+!H§ = 0;
      }
      
      public function §1o§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §@!<§ = param1;
         §3j§ = param2;
         this.§!2§.SetV(§@!<§.GetLocalPoint(param3));
         this.§ !c§.SetV(§3j§.GetLocalPoint(param3));
         this.§+!H§ = §3j§.GetAngle() - §@!<§.GetAngle();
      }
   }
}
