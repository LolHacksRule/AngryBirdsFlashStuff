package §7!3§
{
   import §+d§.b2Body;
   import §6%§.b2internal;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var § 3§:b2Vec2;
      
      public var §&!-§:b2Vec2;
      
      public var §^[§:b2Vec2;
      
      public var §]]§:Number;
      
      public var §5;§:Boolean;
      
      public var § M§:Number;
      
      public var §;9§:Number;
      
      public var §`[§:Boolean;
      
      public var §2=§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§ 3§ = new b2Vec2();
         this.§&!-§ = new b2Vec2();
         this.§^[§ = new b2Vec2();
         super();
         type = b2Joint.§#T§;
         this.§^[§.Set(1,0);
         this.§]]§ = 0;
         this.§5;§ = false;
         this.§ M§ = 0;
         this.§;9§ = 0;
         this.§`[§ = false;
         this.§2=§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §9!M§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §1!V§ = param1;
         §;!?§ = param2;
         this.§ 3§ = §1!V§.GetLocalPoint(param3);
         this.§&!-§ = §;!?§.GetLocalPoint(param3);
         this.§^[§ = §1!V§.GetLocalVector(param4);
         this.§]]§ = §;!?§.GetAngle() - §1!V§.GetAngle();
      }
   }
}
