package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var §`"M§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§-!,§ = new b2Vec2();
         this.§["9§ = new b2Vec2();
         super();
         type = b2Joint.§=!_§;
         this.§`"M§ = 0;
         this.maxTorque = 0;
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §`y§ = param1;
         §8!7§ = param2;
         this.§-!,§.SetV(§`y§.GetLocalPoint(param3));
         this.§["9§.SetV(§8!7§.GetLocalPoint(param3));
      }
   }
}
