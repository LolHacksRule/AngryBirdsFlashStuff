package §[9§
{
   import §'!a§.b2internal;
   import §6!n§.b2Vec2;
   import §9!K§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §8U§:b2Vec2;
      
      public var §#i§:b2Vec2;
      
      public var §%"E§:Number;
      
      public function b2WeldJointDef()
      {
         this.§8U§ = new b2Vec2();
         this.§#i§ = new b2Vec2();
         super();
         type = b2Joint.§3!C§;
         this.§%"E§ = 0;
      }
      
      public function §break§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §0f§ = param1;
         §>F§ = param2;
         this.§8U§.SetV(§0f§.GetLocalPoint(param3));
         this.§#i§.SetV(§>F§.GetLocalPoint(param3));
         this.§%"E§ = §>F§.GetAngle() - §0f§.GetAngle();
      }
   }
}
