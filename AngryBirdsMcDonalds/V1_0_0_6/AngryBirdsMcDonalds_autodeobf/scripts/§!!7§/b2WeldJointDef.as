package §!!7§
{
   import §7!5§.b2Body;
   import §7!Y§.b2internal;
   import §@![§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §'8§:b2Vec2;
      
      public var §>!_§:b2Vec2;
      
      public var §=^§:Number;
      
      public function b2WeldJointDef()
      {
         this.§'8§ = new b2Vec2();
         this.§>!_§ = new b2Vec2();
         super();
         type = b2Joint.§%!G§;
         this.§=^§ = 0;
      }
      
      public function §1!O§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §1v§ = param1;
         §<W§ = param2;
         this.§'8§.SetV(§1v§.GetLocalPoint(param3));
         this.§>!_§.SetV(§<W§.GetLocalPoint(param3));
         this.§=^§ = §<W§.GetAngle() - §1v§.GetAngle();
      }
   }
}
