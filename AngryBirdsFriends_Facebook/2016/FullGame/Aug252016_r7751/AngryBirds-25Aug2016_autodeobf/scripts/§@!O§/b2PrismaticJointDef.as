package §@!O§
{
   import §0H§.b2internal;
   import §0m§.b2Vec2;
   import §=#n§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §@2§:b2Vec2;
      
      public var §7#$§:b2Vec2;
      
      public var §3$%§:b2Vec2;
      
      public var §[$"§:Number;
      
      public var §`"R§:Boolean;
      
      public var §#-§:Number;
      
      public var §-!p§:Number;
      
      public var §"Y§:Boolean;
      
      public var §!!>§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§@2§ = new b2Vec2();
         this.§7#$§ = new b2Vec2();
         this.§3$%§ = new b2Vec2();
         super();
         type = b2Joint.§4$2§;
         this.§3$%§.Set(1,0);
         this.§[$"§ = 0;
         this.§`"R§ = false;
         this.§#-§ = 0;
         this.§-!p§ = 0;
         this.§"Y§ = false;
         this.§!!>§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §1[§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §9"Z§ = param1;
         §'!Y§ = param2;
         this.§@2§ = §9"Z§.GetLocalPoint(param3);
         this.§7#$§ = §'!Y§.GetLocalPoint(param3);
         this.§3$%§ = §9"Z§.GetLocalVector(param4);
         this.§[$"§ = §'!Y§.GetAngle() - §9"Z§.GetAngle();
      }
   }
}
