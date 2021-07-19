package §,!0§
{
   import §"J§.b2Body;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §3!&§:b2Vec2;
      
      public var §2!P§:b2Vec2;
      
      public var § "2§:Number;
      
      public var §2<§:Boolean;
      
      public var §9"!§:Number;
      
      public var § !A§:Number;
      
      public var §#a§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §@!U§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§3!&§ = new b2Vec2();
         this.§2!P§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§3!&§.Set(0,0);
         this.§2!P§.Set(0,0);
         this.§ "2§ = 0;
         this.§9"!§ = 0;
         this.§ !A§ = 0;
         this.§@!U§ = 0;
         this.motorSpeed = 0;
         this.§2<§ = false;
         this.§#a§ = false;
      }
      
      public function §&!§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         § !T§ = param1;
         §import§ = param2;
         this.§3!&§ = § !T§.GetLocalPoint(param3);
         this.§2!P§ = §import§.GetLocalPoint(param3);
         this.§ "2§ = §import§.GetAngle() - § !T§.GetAngle();
      }
   }
}
