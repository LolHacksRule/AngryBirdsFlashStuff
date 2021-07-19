package §`X§
{
   import §'!&§.b2Body;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §!8§:b2Vec2;
      
      public var §@W§:b2Vec2;
      
      public var §+!L§:Number;
      
      public function b2WeldJointDef()
      {
         this.§!8§ = new b2Vec2();
         this.§@W§ = new b2Vec2();
         super();
         type = b2Joint.§@"$§;
         this.§+!L§ = 0;
      }
      
      public function §>`§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §+,§ = param1;
         §"R§ = param2;
         this.§!8§.SetV(§+,§.GetLocalPoint(param3));
         this.§@W§.SetV(§"R§.GetLocalPoint(param3));
         this.§+!L§ = §"R§.GetAngle() - §+,§.GetAngle();
      }
   }
}
