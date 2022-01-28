package § !V§
{
   import §+S§.b2Body;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §!2§:b2Vec2;
      
      public var § !c§:b2Vec2;
      
      public var §+!H§:Number;
      
      public var §4!E§:Boolean;
      
      public var §@!U§:Number;
      
      public var §6!#§:Number;
      
      public var §7!S§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §1a§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§!2§ = new b2Vec2();
         this.§ !c§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§!2§.Set(0,0);
         this.§ !c§.Set(0,0);
         this.§+!H§ = 0;
         this.§@!U§ = 0;
         this.§6!#§ = 0;
         this.§1a§ = 0;
         this.motorSpeed = 0;
         this.§4!E§ = false;
         this.§7!S§ = false;
      }
      
      public function §1o§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §@!<§ = param1;
         §3j§ = param2;
         this.§!2§ = §@!<§.GetLocalPoint(param3);
         this.§ !c§ = §3j§.GetLocalPoint(param3);
         this.§+!H§ = §3j§.GetAngle() - §@!<§.GetAngle();
      }
   }
}
