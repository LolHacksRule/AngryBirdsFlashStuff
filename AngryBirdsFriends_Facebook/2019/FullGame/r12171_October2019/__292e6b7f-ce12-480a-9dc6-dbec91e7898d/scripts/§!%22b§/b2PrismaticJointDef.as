package §!"b§
{
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §04§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §,#D§:b2Vec2;
      
      public var §?#d§:b2Vec2;
      
      public var §;-§:b2Vec2;
      
      public var §8§:Number;
      
      public var §4"E§:Boolean;
      
      public var §-7§:Number;
      
      public var §2c§:Number;
      
      public var §]Q§:Boolean;
      
      public var §4N§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§,#D§ = new b2Vec2();
         this.§?#d§ = new b2Vec2();
         this.§;-§ = new b2Vec2();
         super();
         type = b2Joint.§+!7§;
         this.§;-§.Set(1,0);
         this.§8§ = 0;
         this.§4"E§ = false;
         this.§-7§ = 0;
         this.§2c§ = 0;
         this.§]Q§ = false;
         this.§4N§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §&N§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §9!Z§ = param1;
         §#!_§ = param2;
         this.§,#D§ = §9!Z§.GetLocalPoint(param3);
         this.§?#d§ = §#!_§.GetLocalPoint(param3);
         this.§;-§ = §9!Z§.GetLocalVector(param4);
         this.§8§ = §#!_§.GetAngle() - §9!Z§.GetAngle();
      }
   }
}
