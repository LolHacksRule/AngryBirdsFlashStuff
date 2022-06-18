package §!6§
{
   import § !5§.b2internal;
   import §+,§.b2Vec2;
   import §[W§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §2f§:b2Vec2;
      
      public var §@n§:b2Vec2;
      
      public var §9I§:b2Vec2;
      
      public var §7Z§:Number;
      
      public var §9o§:Boolean;
      
      public var §,X§:Number;
      
      public var §>!`§:Number;
      
      public var §=!;§:Boolean;
      
      public var §'!R§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§2f§ = new b2Vec2();
         this.§@n§ = new b2Vec2();
         this.§9I§ = new b2Vec2();
         super();
         type = b2Joint.§&2§;
         this.§9I§.Set(1,0);
         this.§7Z§ = 0;
         this.§9o§ = false;
         this.§,X§ = 0;
         this.§>!`§ = 0;
         this.§=!;§ = false;
         this.§'!R§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §+!R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §-[§ = param1;
         §>N§ = param2;
         this.§2f§ = §-[§.GetLocalPoint(param3);
         this.§@n§ = §>N§.GetLocalPoint(param3);
         this.§9I§ = §-[§.GetLocalVector(param4);
         this.§7Z§ = §>N§.GetAngle() - §-[§.GetAngle();
      }
   }
}
