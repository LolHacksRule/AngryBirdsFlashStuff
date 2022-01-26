package §9A§
{
   import §'!3§.b2internal;
   import §3q§.b2Vec2;
   import §?0§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §`!X§:b2Vec2;
      
      public var §+!,§:b2Vec2;
      
      public var §5o§:Number;
      
      public function b2WeldJointDef()
      {
         this.§`!X§ = new b2Vec2();
         this.§+!,§ = new b2Vec2();
         super();
         type = b2Joint.§<@§;
         this.§5o§ = 0;
      }
      
      public function §;!W§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §#1§ = param1;
         §"!<§ = param2;
         this.§`!X§.SetV(§#1§.GetLocalPoint(param3));
         this.§+!,§.SetV(§"!<§.GetLocalPoint(param3));
         this.§5o§ = §"!<§.GetAngle() - §#1§.GetAngle();
      }
   }
}
