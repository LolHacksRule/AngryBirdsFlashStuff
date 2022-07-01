package §8!k§
{
   import §-!G§.b2Vec2;
   import §7"'§.b2internal;
   import §=9§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §"!O§:b2Vec2;
      
      public var § W§:b2Vec2;
      
      public var §;!w§:Number;
      
      public function b2WeldJointDef()
      {
         this.§"!O§ = new b2Vec2();
         this.§ W§ = new b2Vec2();
         super();
         type = b2Joint.§3!$§;
         this.§;!w§ = 0;
      }
      
      public function §+"'§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §<!S§ = param1;
         §=Y§ = param2;
         this.§"!O§.SetV(§<!S§.GetLocalPoint(param3));
         this.§ W§.SetV(§=Y§.GetLocalPoint(param3));
         this.§;!w§ = §=Y§.GetAngle() - §<!S§.GetAngle();
      }
   }
}
