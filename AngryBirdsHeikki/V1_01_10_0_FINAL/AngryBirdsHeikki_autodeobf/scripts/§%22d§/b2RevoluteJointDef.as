package §"d§
{
   import §3!R§.b2Body;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §@b§:b2Vec2;
      
      public var §=i§:b2Vec2;
      
      public var §;w§:Number;
      
      public var §3L§:Boolean;
      
      public var §"!0§:Number;
      
      public var § b§:Number;
      
      public var §;`§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §'Y§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§@b§ = new b2Vec2();
         this.§=i§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§@b§.Set(0,0);
         this.§=i§.Set(0,0);
         this.§;w§ = 0;
         this.§"!0§ = 0;
         this.§ b§ = 0;
         this.§'Y§ = 0;
         this.motorSpeed = 0;
         this.§3L§ = false;
         this.§;`§ = false;
      }
      
      public function §';§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §&]§ = param1;
         §+0§ = param2;
         this.§@b§ = §&]§.GetLocalPoint(param3);
         this.§=i§ = §+0§.GetLocalPoint(param3);
         this.§;w§ = §+0§.GetAngle() - §&]§.GetAngle();
      }
   }
}
