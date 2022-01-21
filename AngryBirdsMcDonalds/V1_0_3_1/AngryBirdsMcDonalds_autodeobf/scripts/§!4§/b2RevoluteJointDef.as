package §!4§
{
   import §&x§.b2Body;
   import §0,§.b2Vec2;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §3_§:b2Vec2;
      
      public var §-<§:b2Vec2;
      
      public var §57§:Number;
      
      public var §'! §:Boolean;
      
      public var § !9§:Number;
      
      public var §<6§:Number;
      
      public var §'!+§:Boolean;
      
      public var motorSpeed:Number;
      
      public var § !m§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§3_§ = new b2Vec2();
         this.§-<§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§3_§.Set(0,0);
         this.§-<§.Set(0,0);
         this.§57§ = 0;
         this.§ !9§ = 0;
         this.§<6§ = 0;
         this.§ !m§ = 0;
         this.motorSpeed = 0;
         this.§'! § = false;
         this.§'!+§ = false;
      }
      
      public function §,!p§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §@!F§ = param1;
         §9!T§ = param2;
         this.§3_§ = §@!F§.GetLocalPoint(param3);
         this.§-<§ = §9!T§.GetLocalPoint(param3);
         this.§57§ = §9!T§.GetAngle() - §@!F§.GetAngle();
      }
   }
}
