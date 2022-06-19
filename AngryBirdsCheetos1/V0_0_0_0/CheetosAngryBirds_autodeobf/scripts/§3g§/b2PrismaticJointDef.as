package §3g§
{
   import §&!"§.b2Body;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var §=!P§:b2Vec2;
      
      public var §72§:Number;
      
      public var §9[§:Boolean;
      
      public var §^!<§:Number;
      
      public var §1g§:Number;
      
      public var §<S§:Boolean;
      
      public var §6f§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§4B§ = new b2Vec2();
         this.§ !Q§ = new b2Vec2();
         this.§=!P§ = new b2Vec2();
         super();
         type = b2Joint.§;!"§;
         this.§=!P§.Set(1,0);
         this.§72§ = 0;
         this.§9[§ = false;
         this.§^!<§ = 0;
         this.§1g§ = 0;
         this.§<S§ = false;
         this.§6f§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §<§ = param1;
         §,!M§ = param2;
         this.§4B§ = §<§.GetLocalPoint(param3);
         this.§ !Q§ = §,!M§.GetLocalPoint(param3);
         this.§=!P§ = §<§.GetLocalVector(param4);
         this.§72§ = §,!M§.GetAngle() - §<§.GetAngle();
      }
   }
}
