package §@!O§
{
   import §0H§.b2internal;
   import §0m§.b2Vec2;
   import §=#n§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §@2§:b2Vec2;
      
      public var §7#$§:b2Vec2;
      
      public var §[$"§:Number;
      
      public var §`"R§:Boolean;
      
      public var §"#j§:Number;
      
      public var §4$'§:Number;
      
      public var §"Y§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §!!j§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§@2§ = new b2Vec2();
         this.§7#$§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§@2§.Set(0,0);
         this.§7#$§.Set(0,0);
         this.§[$"§ = 0;
         this.§"#j§ = 0;
         this.§4$'§ = 0;
         this.§!!j§ = 0;
         this.motorSpeed = 0;
         this.§`"R§ = false;
         this.§"Y§ = false;
      }
      
      public function §1[§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §9"Z§ = param1;
         §'!Y§ = param2;
         this.§@2§ = §9"Z§.GetLocalPoint(param3);
         this.§7#$§ = §'!Y§.GetLocalPoint(param3);
         this.§[$"§ = §'!Y§.GetAngle() - §9"Z§.GetAngle();
      }
   }
}
