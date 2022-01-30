package §<!?§
{
   import §!r§.b2internal;
   import §-!2§.b2Vec2;
   import §0!j§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §'!]§:b2Vec2;
      
      public var §@!p§:b2Vec2;
      
      public var §6r§:b2Vec2;
      
      public var §]-§:Number;
      
      public var §?!t§:Boolean;
      
      public var §?A§:Number;
      
      public var §3!4§:Number;
      
      public var §>!e§:Boolean;
      
      public var § !T§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§'!]§ = new b2Vec2();
         this.§@!p§ = new b2Vec2();
         this.§6r§ = new b2Vec2();
         super();
         type = b2Joint.§[!Y§;
         this.§6r§.Set(1,0);
         this.§]-§ = 0;
         this.§?!t§ = false;
         this.§?A§ = 0;
         this.§3!4§ = 0;
         this.§>!e§ = false;
         this.§ !T§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §7!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §,!K§ = param1;
         §6n§ = param2;
         this.§'!]§ = §,!K§.GetLocalPoint(param3);
         this.§@!p§ = §6n§.GetLocalPoint(param3);
         this.§6r§ = §,!K§.GetLocalVector(param4);
         this.§]-§ = §6n§.GetAngle() - §,!K§.GetAngle();
      }
   }
}
