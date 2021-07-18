package §3g§
{
   import §&!"§.b2Body;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var §72§:Number;
      
      public function b2WeldJointDef()
      {
         this.§4B§ = new b2Vec2();
         this.§ !Q§ = new b2Vec2();
         super();
         type = b2Joint.§]t§;
         this.§72§ = 0;
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §<§ = param1;
         §,!M§ = param2;
         this.§4B§.SetV(§<§.GetLocalPoint(param3));
         this.§ !Q§.SetV(§,!M§.GetLocalPoint(param3));
         this.§72§ = §,!M§.GetAngle() - §<§.GetAngle();
      }
   }
}
