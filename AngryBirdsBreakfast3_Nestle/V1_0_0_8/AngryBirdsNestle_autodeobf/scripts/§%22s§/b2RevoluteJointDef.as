package §"s§
{
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §[K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §#J§:b2Vec2;
      
      public var §7!A§:b2Vec2;
      
      public var §[§:Number;
      
      public var § b§:Boolean;
      
      public var §,$§:Number;
      
      public var §'I§:Number;
      
      public var §-!W§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §9"$§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§#J§ = new b2Vec2();
         this.§7!A§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§#J§.Set(0,0);
         this.§7!A§.Set(0,0);
         this.§[§ = 0;
         this.§,$§ = 0;
         this.§'I§ = 0;
         this.§9"$§ = 0;
         this.motorSpeed = 0;
         this.§ b§ = false;
         this.§-!W§ = false;
      }
      
      public function §3!,§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §%!T§ = param1;
         §,d§ = param2;
         this.§#J§ = §%!T§.GetLocalPoint(param3);
         this.§7!A§ = §,d§.GetLocalPoint(param3);
         this.§[§ = §,d§.GetAngle() - §%!T§.GetAngle();
      }
   }
}
