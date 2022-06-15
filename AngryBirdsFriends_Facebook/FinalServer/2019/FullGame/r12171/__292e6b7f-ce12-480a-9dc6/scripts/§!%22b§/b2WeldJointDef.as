package §!"b§
{
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §04§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §,#D§:b2Vec2;
      
      public var §?#d§:b2Vec2;
      
      public var §8§:Number;
      
      public function b2WeldJointDef()
      {
         this.§,#D§ = new b2Vec2();
         this.§?#d§ = new b2Vec2();
         super();
         type = b2Joint.§ !o§;
         this.§8§ = 0;
      }
      
      public function §&N§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §9!Z§ = param1;
         §#!_§ = param2;
         this.§,#D§.SetV(§9!Z§.GetLocalPoint(param3));
         this.§?#d§.SetV(§#!_§.GetLocalPoint(param3));
         this.§8§ = §#!_§.GetAngle() - §9!Z§.GetAngle();
      }
   }
}
