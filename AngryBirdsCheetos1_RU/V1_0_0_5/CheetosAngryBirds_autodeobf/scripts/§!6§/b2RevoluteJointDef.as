package §!6§
{
   import § !5§.b2internal;
   import §+,§.b2Vec2;
   import §[W§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §2f§:b2Vec2;
      
      public var §@n§:b2Vec2;
      
      public var §7Z§:Number;
      
      public var §9o§:Boolean;
      
      public var §1![§:Number;
      
      public var §5-§:Number;
      
      public var §=!;§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §>^§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§2f§ = new b2Vec2();
         this.§@n§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§2f§.Set(0,0);
         this.§@n§.Set(0,0);
         this.§7Z§ = 0;
         this.§1![§ = 0;
         this.§5-§ = 0;
         this.§>^§ = 0;
         this.motorSpeed = 0;
         this.§9o§ = false;
         this.§=!;§ = false;
      }
      
      public function §+!R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §-[§ = param1;
         §>N§ = param2;
         this.§2f§ = §-[§.GetLocalPoint(param3);
         this.§@n§ = §>N§.GetLocalPoint(param3);
         this.§7Z§ = §>N§.GetAngle() - §-[§.GetAngle();
      }
   }
}
