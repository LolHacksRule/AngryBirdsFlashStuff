package §4!J§
{
   import §6V§.b2Vec2;
   import §<!L§.b2Body;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §;8§:b2Vec2;
      
      public var §;!c§:b2Vec2;
      
      public var §2Y§:Number;
      
      public function b2WeldJointDef()
      {
         this.§;8§ = new b2Vec2();
         this.§;!c§ = new b2Vec2();
         super();
         type = b2Joint.§!<§;
         this.§2Y§ = 0;
      }
      
      public function §2#§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §;!9§ = param1;
         §;!,§ = param2;
         this.§;8§.SetV(§;!9§.GetLocalPoint(param3));
         this.§;!c§.SetV(§;!,§.GetLocalPoint(param3));
         this.§2Y§ = §;!,§.GetAngle() - §;!9§.GetAngle();
      }
   }
}
