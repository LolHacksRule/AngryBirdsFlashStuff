package §3g§
{
   import §&!"§.b2Body;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var §72§:Number;
      
      public var §9[§:Boolean;
      
      public var §4q§:Number;
      
      public var §33§:Number;
      
      public var §<S§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §6[§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§4B§ = new b2Vec2();
         this.§ !Q§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§4B§.Set(0,0);
         this.§ !Q§.Set(0,0);
         this.§72§ = 0;
         this.§4q§ = 0;
         this.§33§ = 0;
         this.§6[§ = 0;
         this.motorSpeed = 0;
         this.§9[§ = false;
         this.§<S§ = false;
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §<§ = param1;
         §,!M§ = param2;
         this.§4B§ = §<§.GetLocalPoint(param3);
         this.§ !Q§ = §,!M§.GetLocalPoint(param3);
         this.§72§ = §,!M§.GetAngle() - §<§.GetAngle();
      }
   }
}
