package §!t§
{
   import §8,§.b2internal;
   import §9v§.b2Vec2;
   import §?!E§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var § ;§:b2Vec2;
      
      public var §8!Z§:b2Vec2;
      
      public var §#!8§:Number;
      
      public function b2WeldJointDef()
      {
         this.§ ;§ = new b2Vec2();
         this.§8!Z§ = new b2Vec2();
         super();
         type = b2Joint.§2!&§;
         this.§#!8§ = 0;
      }
      
      public function §`!&§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §["%§ = param1;
         §`!<§ = param2;
         this.§ ;§.SetV(§["%§.GetLocalPoint(param3));
         this.§8!Z§.SetV(§`!<§.GetLocalPoint(param3));
         this.§#!8§ = §`!<§.GetAngle() - §["%§.GetAngle();
      }
   }
}
