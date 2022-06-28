package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var §-!u§:Number;
      
      public var §&!A§:Boolean;
      
      public var §9!@§:Number;
      
      public var §6V§:Number;
      
      public var § !q§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §;U§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§'G§ = new b2Vec2();
         this.§true§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§'G§.Set(0,0);
         this.§true§.Set(0,0);
         this.§-!u§ = 0;
         this.§9!@§ = 0;
         this.§6V§ = 0;
         this.§;U§ = 0;
         this.motorSpeed = 0;
         this.§&!A§ = false;
         this.§ !q§ = false;
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §19§ = param1;
         §"@§ = param2;
         this.§'G§ = §19§.GetLocalPoint(param3);
         this.§true§ = §"@§.GetLocalPoint(param3);
         this.§-!u§ = §"@§.GetAngle() - §19§.GetAngle();
      }
   }
}
