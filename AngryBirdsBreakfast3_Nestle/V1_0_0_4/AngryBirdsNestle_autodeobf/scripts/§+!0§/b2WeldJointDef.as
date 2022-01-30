package §+!0§
{
   import §-%§.b2Vec2;
   import §9"5§.b2Body;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §1"&§:b2Vec2;
      
      public var §-m§:b2Vec2;
      
      public var §]!i§:Number;
      
      public function b2WeldJointDef()
      {
         this.§1"&§ = new b2Vec2();
         this.§-m§ = new b2Vec2();
         super();
         type = b2Joint.§?d§;
         this.§]!i§ = 0;
      }
      
      public function §,n§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §6z§ = param1;
         §@! § = param2;
         this.§1"&§.SetV(§6z§.GetLocalPoint(param3));
         this.§-m§.SetV(§@! §.GetLocalPoint(param3));
         this.§]!i§ = §@! §.GetAngle() - §6z§.GetAngle();
      }
   }
}
