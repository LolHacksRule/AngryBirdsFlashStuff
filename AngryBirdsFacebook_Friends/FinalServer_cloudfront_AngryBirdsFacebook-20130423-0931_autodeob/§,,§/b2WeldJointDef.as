package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var §1b§:Number;
      
      public function b2WeldJointDef()
      {
         this.§-!,§ = new b2Vec2();
         this.§["9§ = new b2Vec2();
         super();
         type = b2Joint.§"L§;
         this.§1b§ = 0;
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §`y§ = param1;
         §8!7§ = param2;
         this.§-!,§.SetV(§`y§.GetLocalPoint(param3));
         this.§["9§.SetV(§8!7§.GetLocalPoint(param3));
         this.§1b§ = §8!7§.GetAngle() - §`y§.GetAngle();
      }
   }
}
