package §!!7§
{
   import §7!5§.b2Body;
   import §7!Y§.b2internal;
   import §@![§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §'8§:b2Vec2;
      
      public var §>!_§:b2Vec2;
      
      public var §=^§:Number;
      
      public var §#!D§:Boolean;
      
      public var §@!'§:Number;
      
      public var §>f§:Number;
      
      public var get:Boolean;
      
      public var motorSpeed:Number;
      
      public var §[!G§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§'8§ = new b2Vec2();
         this.§>!_§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§'8§.Set(0,0);
         this.§>!_§.Set(0,0);
         this.§=^§ = 0;
         this.§@!'§ = 0;
         this.§>f§ = 0;
         this.§[!G§ = 0;
         this.motorSpeed = 0;
         this.§#!D§ = false;
         this.get = false;
      }
      
      public function §1!O§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §1v§ = param1;
         §<W§ = param2;
         this.§'8§ = §1v§.GetLocalPoint(param3);
         this.§>!_§ = §<W§.GetLocalPoint(param3);
         this.§=^§ = §<W§.GetAngle() - §1v§.GetAngle();
      }
   }
}
