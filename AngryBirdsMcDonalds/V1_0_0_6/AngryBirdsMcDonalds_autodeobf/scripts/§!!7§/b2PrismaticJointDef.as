package §!!7§
{
   import §7!5§.b2Body;
   import §7!Y§.b2internal;
   import §@![§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §'8§:b2Vec2;
      
      public var §>!_§:b2Vec2;
      
      public var §!!c§:b2Vec2;
      
      public var §=^§:Number;
      
      public var §#!D§:Boolean;
      
      public var §^!e§:Number;
      
      public var §'!T§:Number;
      
      public var get:Boolean;
      
      public var §3!8§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§'8§ = new b2Vec2();
         this.§>!_§ = new b2Vec2();
         this.§!!c§ = new b2Vec2();
         super();
         type = b2Joint.§&d§;
         this.§!!c§.Set(1,0);
         this.§=^§ = 0;
         this.§#!D§ = false;
         this.§^!e§ = 0;
         this.§'!T§ = 0;
         this.get = false;
         this.§3!8§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §1!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §1v§ = param1;
         §<W§ = param2;
         this.§'8§ = §1v§.GetLocalPoint(param3);
         this.§>!_§ = §<W§.GetLocalPoint(param3);
         this.§!!c§ = §1v§.GetLocalVector(param4);
         this.§=^§ = §<W§.GetAngle() - §1v§.GetAngle();
      }
   }
}
