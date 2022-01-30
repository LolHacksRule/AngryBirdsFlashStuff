package §>H§
{
   import § !%§.b2internal;
   import §,!k§.b2Vec2;
   import §;'§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §`!>§:b2Vec2;
      
      public var §0l§:b2Vec2;
      
      public var §`!r§:Number;
      
      public function b2WeldJointDef()
      {
         this.§`!>§ = new b2Vec2();
         this.§0l§ = new b2Vec2();
         super();
         type = b2Joint.§3o§;
         this.§`!r§ = 0;
      }
      
      public function §2f§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §>q§ = param1;
         §6!,§ = param2;
         this.§`!>§.SetV(§>q§.GetLocalPoint(param3));
         this.§0l§.SetV(§6!,§.GetLocalPoint(param3));
         this.§`!r§ = §6!,§.GetAngle() - §>q§.GetAngle();
      }
   }
}
