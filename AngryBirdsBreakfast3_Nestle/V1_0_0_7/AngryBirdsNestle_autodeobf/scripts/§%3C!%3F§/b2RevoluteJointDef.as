package §<!?§
{
   import §!r§.b2internal;
   import §-!2§.b2Vec2;
   import §0!j§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §'!]§:b2Vec2;
      
      public var §@!p§:b2Vec2;
      
      public var §]-§:Number;
      
      public var §?!t§:Boolean;
      
      public var §^!0§:Number;
      
      public var §#-§:Number;
      
      public var §>!e§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §75§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§'!]§ = new b2Vec2();
         this.§@!p§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§'!]§.Set(0,0);
         this.§@!p§.Set(0,0);
         this.§]-§ = 0;
         this.§^!0§ = 0;
         this.§#-§ = 0;
         this.§75§ = 0;
         this.motorSpeed = 0;
         this.§?!t§ = false;
         this.§>!e§ = false;
      }
      
      public function §7!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §,!K§ = param1;
         §6n§ = param2;
         this.§'!]§ = §,!K§.GetLocalPoint(param3);
         this.§@!p§ = §6n§.GetLocalPoint(param3);
         this.§]-§ = §6n§.GetAngle() - §,!K§.GetAngle();
      }
   }
}
