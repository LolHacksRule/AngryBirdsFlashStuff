package §+D§
{
   import §#!X§.b2Body;
   import §&!S§.b2Vec2;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §&9§:b2Vec2;
      
      public var §^"<§:b2Vec2;
      
      public var § "5§:Number;
      
      public function b2WeldJointDef()
      {
         this.§&9§ = new b2Vec2();
         this.§^"<§ = new b2Vec2();
         super();
         type = b2Joint.§'O§;
         this.§ "5§ = 0;
      }
      
      public function §5!k§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §43§ = param1;
         §4!l§ = param2;
         this.§&9§.SetV(§43§.GetLocalPoint(param3));
         this.§^"<§.SetV(§4!l§.GetLocalPoint(param3));
         this.§ "5§ = §4!l§.GetAngle() - §43§.GetAngle();
      }
   }
}
