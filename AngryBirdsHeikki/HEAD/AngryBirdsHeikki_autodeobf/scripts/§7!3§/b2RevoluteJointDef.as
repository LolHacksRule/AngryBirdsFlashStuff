package §7!3§
{
   import §+d§.b2Body;
   import §6%§.b2internal;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var § 3§:b2Vec2;
      
      public var §&!-§:b2Vec2;
      
      public var §]]§:Number;
      
      public var §5;§:Boolean;
      
      public var §82§:Number;
      
      public var §@!D§:Number;
      
      public var §`[§:Boolean;
      
      public var motorSpeed:Number;
      
      public var § i§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§ 3§ = new b2Vec2();
         this.§&!-§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§ 3§.Set(0,0);
         this.§&!-§.Set(0,0);
         this.§]]§ = 0;
         this.§82§ = 0;
         this.§@!D§ = 0;
         this.§ i§ = 0;
         this.motorSpeed = 0;
         this.§5;§ = false;
         this.§`[§ = false;
      }
      
      public function §9!M§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §1!V§ = param1;
         §;!?§ = param2;
         this.§ 3§ = §1!V§.GetLocalPoint(param3);
         this.§&!-§ = §;!?§.GetLocalPoint(param3);
         this.§]]§ = §;!?§.GetAngle() - §1!V§.GetAngle();
      }
   }
}
