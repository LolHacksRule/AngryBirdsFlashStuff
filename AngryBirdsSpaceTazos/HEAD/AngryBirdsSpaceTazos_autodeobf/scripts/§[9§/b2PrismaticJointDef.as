package §[9§
{
   import §'!a§.b2internal;
   import §6!n§.b2Vec2;
   import §9!K§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §8U§:b2Vec2;
      
      public var §#i§:b2Vec2;
      
      public var §6!<§:b2Vec2;
      
      public var §%"E§:Number;
      
      public var §#!Q§:Boolean;
      
      public var §;+§:Number;
      
      public var §<![§:Number;
      
      public var §`!3§:Boolean;
      
      public var §[""§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§8U§ = new b2Vec2();
         this.§#i§ = new b2Vec2();
         this.§6!<§ = new b2Vec2();
         super();
         type = b2Joint.§8"@§;
         this.§6!<§.Set(1,0);
         this.§%"E§ = 0;
         this.§#!Q§ = false;
         this.§;+§ = 0;
         this.§<![§ = 0;
         this.§`!3§ = false;
         this.§[""§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §break§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §0f§ = param1;
         §>F§ = param2;
         this.§8U§ = §0f§.GetLocalPoint(param3);
         this.§#i§ = §>F§.GetLocalPoint(param3);
         this.§6!<§ = §0f§.GetLocalVector(param4);
         this.§%"E§ = §>F§.GetAngle() - §0f§.GetAngle();
      }
   }
}
