package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var §49§:Number;
      
      public function b2WeldJointDef()
      {
         this.§!!U§ = new b2Vec2();
         this.§"!'§ = new b2Vec2();
         super();
         type = b2Joint.§%=§;
         this.§49§ = 0;
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §-'§ = param1;
         §<!L§ = param2;
         this.§!!U§.SetV(§-'§.GetLocalPoint(param3));
         this.§"!'§.SetV(§<!L§.GetLocalPoint(param3));
         this.§49§ = §<!L§.GetAngle() - §-'§.GetAngle();
      }
   }
}
