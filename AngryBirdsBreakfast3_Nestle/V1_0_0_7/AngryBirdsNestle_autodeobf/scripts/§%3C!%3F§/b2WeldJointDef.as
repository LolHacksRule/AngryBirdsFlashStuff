package §<!?§
{
   import §!r§.b2internal;
   import §-!2§.b2Vec2;
   import §0!j§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §'!]§:b2Vec2;
      
      public var §@!p§:b2Vec2;
      
      public var §]-§:Number;
      
      public function b2WeldJointDef()
      {
         this.§'!]§ = new b2Vec2();
         this.§@!p§ = new b2Vec2();
         super();
         type = b2Joint.§]`§;
         this.§]-§ = 0;
      }
      
      public function §7!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §,!K§ = param1;
         §6n§ = param2;
         this.§'!]§.SetV(§,!K§.GetLocalPoint(param3));
         this.§@!p§.SetV(§6n§.GetLocalPoint(param3));
         this.§]-§ = §6n§.GetAngle() - §,!K§.GetAngle();
      }
   }
}
