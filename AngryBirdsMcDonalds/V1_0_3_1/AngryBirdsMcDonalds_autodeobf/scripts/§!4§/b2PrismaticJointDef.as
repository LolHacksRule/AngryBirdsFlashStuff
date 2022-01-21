package §!4§
{
   import §&x§.b2Body;
   import §0,§.b2Vec2;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §3_§:b2Vec2;
      
      public var §-<§:b2Vec2;
      
      public var §+!Q§:b2Vec2;
      
      public var §57§:Number;
      
      public var §'! §:Boolean;
      
      public var §4!k§:Number;
      
      public var §4!6§:Number;
      
      public var §'!+§:Boolean;
      
      public var §3d§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§3_§ = new b2Vec2();
         this.§-<§ = new b2Vec2();
         this.§+!Q§ = new b2Vec2();
         super();
         type = b2Joint.§@!g§;
         this.§+!Q§.Set(1,0);
         this.§57§ = 0;
         this.§'! § = false;
         this.§4!k§ = 0;
         this.§4!6§ = 0;
         this.§'!+§ = false;
         this.§3d§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §,!p§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §@!F§ = param1;
         §9!T§ = param2;
         this.§3_§ = §@!F§.GetLocalPoint(param3);
         this.§-<§ = §9!T§.GetLocalPoint(param3);
         this.§+!Q§ = §@!F§.GetLocalVector(param4);
         this.§57§ = §9!T§.GetAngle() - §@!F§.GetAngle();
      }
   }
}
