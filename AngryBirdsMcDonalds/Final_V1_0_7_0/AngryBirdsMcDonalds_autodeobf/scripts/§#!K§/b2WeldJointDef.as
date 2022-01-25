package §#!K§
{
   import §-0§.b2Body;
   import §@g§.b2internal;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §0'§:b2Vec2;
      
      public var §;!b§:b2Vec2;
      
      public var §&!C§:Number;
      
      public function b2WeldJointDef()
      {
         this.§0'§ = new b2Vec2();
         this.§;!b§ = new b2Vec2();
         super();
         type = b2Joint.§[L§;
         this.§&!C§ = 0;
      }
      
      public function §08§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §>!k§ = param1;
         §<u§ = param2;
         this.§0'§.SetV(§>!k§.GetLocalPoint(param3));
         this.§;!b§.SetV(§<u§.GetLocalPoint(param3));
         this.§&!C§ = §<u§.GetAngle() - §>!k§.GetAngle();
      }
   }
}
