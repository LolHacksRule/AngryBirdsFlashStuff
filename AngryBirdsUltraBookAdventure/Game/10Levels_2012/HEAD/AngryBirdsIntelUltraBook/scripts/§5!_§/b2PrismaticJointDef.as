package §5!_§
{
   import §1%§.b2Body;
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §'!<§:b2Vec2;
      
      public var §1!0§:b2Vec2;
      
      public var §<!Y§:b2Vec2;
      
      public var §5S§:Number;
      
      public var §!X§:Boolean;
      
      public var §1!D§:Number;
      
      public var §#g§:Number;
      
      public var §0e§:Boolean;
      
      public var §#M§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§'!<§ = new b2Vec2();
         this.§1!0§ = new b2Vec2();
         this.§<!Y§ = new b2Vec2();
         super();
         type = b2Joint.§#!D§;
         this.§<!Y§.Set(1,0);
         this.§5S§ = 0;
         this.§!X§ = false;
         this.§1!D§ = 0;
         this.§#g§ = 0;
         this.§0e§ = false;
         this.§#M§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §3!a§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §7!K§ = param1;
         §'P§ = param2;
         this.§'!<§ = §7!K§.GetLocalPoint(param3);
         this.§1!0§ = §'P§.GetLocalPoint(param3);
         this.§<!Y§ = §7!K§.GetLocalVector(param4);
         this.§5S§ = §'P§.GetAngle() - §7!K§.GetAngle();
      }
   }
}
