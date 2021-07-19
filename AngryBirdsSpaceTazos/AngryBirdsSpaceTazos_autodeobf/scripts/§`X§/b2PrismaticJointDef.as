package §`X§
{
   import §'!&§.b2Body;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §!8§:b2Vec2;
      
      public var §@W§:b2Vec2;
      
      public var §8!<§:b2Vec2;
      
      public var §+!L§:Number;
      
      public var §+"!§:Boolean;
      
      public var §-!L§:Number;
      
      public var § !W§:Number;
      
      public var §+!b§:Boolean;
      
      public var §7!;§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§!8§ = new b2Vec2();
         this.§@W§ = new b2Vec2();
         this.§8!<§ = new b2Vec2();
         super();
         type = b2Joint.§1"@§;
         this.§8!<§.Set(1,0);
         this.§+!L§ = 0;
         this.§+"!§ = false;
         this.§-!L§ = 0;
         this.§ !W§ = 0;
         this.§+!b§ = false;
         this.§7!;§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §>`§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §+,§ = param1;
         §"R§ = param2;
         this.§!8§ = §+,§.GetLocalPoint(param3);
         this.§@W§ = §"R§.GetLocalPoint(param3);
         this.§8!<§ = §+,§.GetLocalVector(param4);
         this.§+!L§ = §"R§.GetAngle() - §+,§.GetAngle();
      }
   }
}
