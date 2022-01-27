package §[9§
{
   import §'!a§.b2internal;
   import §6!n§.b2Vec2;
   import §9!K§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §8U§:b2Vec2;
      
      public var §#i§:b2Vec2;
      
      public var §%"E§:Number;
      
      public var §#!Q§:Boolean;
      
      public var §@"A§:Number;
      
      public var §'!T§:Number;
      
      public var §`!3§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §=H§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§8U§ = new b2Vec2();
         this.§#i§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§8U§.Set(0,0);
         this.§#i§.Set(0,0);
         this.§%"E§ = 0;
         this.§@"A§ = 0;
         this.§'!T§ = 0;
         this.§=H§ = 0;
         this.motorSpeed = 0;
         this.§#!Q§ = false;
         this.§`!3§ = false;
      }
      
      public function §break§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §0f§ = param1;
         §>F§ = param2;
         this.§8U§ = §0f§.GetLocalPoint(param3);
         this.§#i§ = §>F§.GetLocalPoint(param3);
         this.§%"E§ = §>F§.GetAngle() - §0f§.GetAngle();
      }
   }
}
