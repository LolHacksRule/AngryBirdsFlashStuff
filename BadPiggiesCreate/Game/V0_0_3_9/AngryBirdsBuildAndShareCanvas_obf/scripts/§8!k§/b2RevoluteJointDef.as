package §8!k§
{
   import §-!G§.b2Vec2;
   import §7"'§.b2internal;
   import §=9§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §"!O§:b2Vec2;
      
      public var § W§:b2Vec2;
      
      public var §;!w§:Number;
      
      public var §=!4§:Boolean;
      
      public var §8!!§:Number;
      
      public var §+!Q§:Number;
      
      public var §[!b§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §+!O§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§"!O§ = new b2Vec2();
         this.§ W§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§"!O§.Set(0,0);
         this.§ W§.Set(0,0);
         this.§;!w§ = 0;
         this.§8!!§ = 0;
         this.§+!Q§ = 0;
         this.§+!O§ = 0;
         this.motorSpeed = 0;
         this.§=!4§ = false;
         this.§[!b§ = false;
      }
      
      public function §+"'§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §<!S§ = param1;
         §=Y§ = param2;
         this.§"!O§ = §<!S§.GetLocalPoint(param3);
         this.§ W§ = §=Y§.GetLocalPoint(param3);
         this.§;!w§ = §=Y§.GetAngle() - §<!S§.GetAngle();
      }
   }
}
