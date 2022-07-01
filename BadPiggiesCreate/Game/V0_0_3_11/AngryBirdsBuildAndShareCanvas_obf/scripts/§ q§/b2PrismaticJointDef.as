package § q§
{
   import §+L§.b2Vec2;
   import §7z§.b2Body;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §[!L§:b2Vec2;
      
      public var §8!^§:b2Vec2;
      
      public var §`!<§:b2Vec2;
      
      public var §]!v§:Number;
      
      public var §[!g§:Boolean;
      
      public var §%B§:Number;
      
      public var §7^§:Number;
      
      public var §,!d§:Boolean;
      
      public var §6!t§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§[!L§ = new b2Vec2();
         this.§8!^§ = new b2Vec2();
         this.§`!<§ = new b2Vec2();
         super();
         type = b2Joint.§^1§;
         this.§`!<§.Set(1,0);
         this.§]!v§ = 0;
         this.§[!g§ = false;
         this.§%B§ = 0;
         this.§7^§ = 0;
         this.§,!d§ = false;
         this.§6!t§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §5$§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §@]§ = param1;
         §3@§ = param2;
         this.§[!L§ = §@]§.GetLocalPoint(param3);
         this.§8!^§ = §3@§.GetLocalPoint(param3);
         this.§`!<§ = §@]§.GetLocalVector(param4);
         this.§]!v§ = §3@§.GetAngle() - §@]§.GetAngle();
      }
   }
}
