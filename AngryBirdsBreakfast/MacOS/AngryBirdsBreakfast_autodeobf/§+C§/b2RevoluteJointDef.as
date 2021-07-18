package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §0O§:b2Vec2;
      
      public var § @§:b2Vec2;
      
      public var §<!b§:Number;
      
      public var §+!<§:Boolean;
      
      public var § +§:Number;
      
      public var §,!n§:Number;
      
      public var §[!W§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §1&§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§0O§ = new b2Vec2();
         this.§ @§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§0O§.Set(0,0);
         this.§ @§.Set(0,0);
         this.§<!b§ = 0;
         this.§ +§ = 0;
         this.§,!n§ = 0;
         this.§1&§ = 0;
         this.motorSpeed = 0;
         this.§+!<§ = false;
         this.§[!W§ = false;
      }
      
      public function §",§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §'!n§ = param1;
         § 5§ = param2;
         this.§0O§ = §'!n§.GetLocalPoint(param3);
         this.§ @§ = § 5§.GetLocalPoint(param3);
         this.§<!b§ = § 5§.GetAngle() - §'!n§.GetAngle();
      }
   }
}
