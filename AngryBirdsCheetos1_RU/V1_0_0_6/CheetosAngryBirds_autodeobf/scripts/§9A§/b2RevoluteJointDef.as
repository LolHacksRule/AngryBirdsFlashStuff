package §9A§
{
   import §'!3§.b2internal;
   import §3q§.b2Vec2;
   import §?0§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §`!X§:b2Vec2;
      
      public var §+!,§:b2Vec2;
      
      public var §5o§:Number;
      
      public var §-$§:Boolean;
      
      public var §+!J§:Number;
      
      public var §14§:Number;
      
      public var §2l§:Boolean;
      
      public var motorSpeed:Number;
      
      public var § ]§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§`!X§ = new b2Vec2();
         this.§+!,§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§`!X§.Set(0,0);
         this.§+!,§.Set(0,0);
         this.§5o§ = 0;
         this.§+!J§ = 0;
         this.§14§ = 0;
         this.§ ]§ = 0;
         this.motorSpeed = 0;
         this.§-$§ = false;
         this.§2l§ = false;
      }
      
      public function §;!W§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §#1§ = param1;
         §"!<§ = param2;
         this.§`!X§ = §#1§.GetLocalPoint(param3);
         this.§+!,§ = §"!<§.GetLocalPoint(param3);
         this.§5o§ = §"!<§.GetAngle() - §#1§.GetAngle();
      }
   }
}
