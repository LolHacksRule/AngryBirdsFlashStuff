package §>H§
{
   import § !%§.b2internal;
   import §,!k§.b2Vec2;
   import §;'§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §`!>§:b2Vec2;
      
      public var §0l§:b2Vec2;
      
      public var §`!r§:Number;
      
      public var §^j§:Boolean;
      
      public var §8Q§:Number;
      
      public var §!!O§:Number;
      
      public var §,u§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §9!X§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§`!>§ = new b2Vec2();
         this.§0l§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§`!>§.Set(0,0);
         this.§0l§.Set(0,0);
         this.§`!r§ = 0;
         this.§8Q§ = 0;
         this.§!!O§ = 0;
         this.§9!X§ = 0;
         this.motorSpeed = 0;
         this.§^j§ = false;
         this.§,u§ = false;
      }
      
      public function §2f§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §>q§ = param1;
         §6!,§ = param2;
         this.§`!>§ = §>q§.GetLocalPoint(param3);
         this.§0l§ = §6!,§.GetLocalPoint(param3);
         this.§`!r§ = §6!,§.GetAngle() - §>q§.GetAngle();
      }
   }
}
