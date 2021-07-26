package §!"b§
{
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §04§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §,#D§:b2Vec2;
      
      public var §?#d§:b2Vec2;
      
      public var §8§:Number;
      
      public var §4"E§:Boolean;
      
      public var §-"n§:Number;
      
      public var § $5§:Number;
      
      public var §]Q§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §;#w§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§,#D§ = new b2Vec2();
         this.§?#d§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§,#D§.Set(0,0);
         this.§?#d§.Set(0,0);
         this.§8§ = 0;
         this.§-"n§ = 0;
         this.§ $5§ = 0;
         this.§;#w§ = 0;
         this.motorSpeed = 0;
         this.§4"E§ = false;
         this.§]Q§ = false;
      }
      
      public function §&N§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §9!Z§ = param1;
         §#!_§ = param2;
         this.§,#D§ = §9!Z§.GetLocalPoint(param3);
         this.§?#d§ = §#!_§.GetLocalPoint(param3);
         this.§8§ = §#!_§.GetAngle() - §9!Z§.GetAngle();
      }
   }
}
