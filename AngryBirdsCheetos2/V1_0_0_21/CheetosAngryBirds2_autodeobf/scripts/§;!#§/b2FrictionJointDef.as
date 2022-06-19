package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var §4d§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§!!U§ = new b2Vec2();
         this.§"!'§ = new b2Vec2();
         super();
         type = b2Joint.§6!8§;
         this.§4d§ = 0;
         this.maxTorque = 0;
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §-'§ = param1;
         §<!L§ = param2;
         this.§!!U§.SetV(§-'§.GetLocalPoint(param3));
         this.§"!'§.SetV(§<!L§.GetLocalPoint(param3));
      }
   }
}
