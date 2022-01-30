package §^%§
{
   import §1!z§.b2Vec2;
   import §7!q§.b2Body;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §98§:b2Vec2;
      
      public var §?m§:b2Vec2;
      
      public var §""4§:Number;
      
      public var §;5§:Boolean;
      
      public var §6!W§:Number;
      
      public var §=u§:Number;
      
      public var §>!g§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §]";§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§98§ = new b2Vec2();
         this.§?m§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§98§.Set(0,0);
         this.§?m§.Set(0,0);
         this.§""4§ = 0;
         this.§6!W§ = 0;
         this.§=u§ = 0;
         this.§]";§ = 0;
         this.motorSpeed = 0;
         this.§;5§ = false;
         this.§>!g§ = false;
      }
      
      public function §`!O§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §0",§ = param1;
         §^W§ = param2;
         this.§98§ = §0",§.GetLocalPoint(param3);
         this.§?m§ = §^W§.GetLocalPoint(param3);
         this.§""4§ = §^W§.GetAngle() - §0",§.GetAngle();
      }
   }
}
