package §;N§
{
   import §!R§.b2Vec2;
   import §1B§.b2Body;
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §4D§:b2Vec2;
      
      public var §@@§:b2Vec2;
      
      public var §'P§:Number;
      
      public var §'#§:Boolean;
      
      public var §5+§:Number;
      
      public var §3e§:Number;
      
      public var §8%§:Boolean;
      
      public var motorSpeed:Number;
      
      public var § X§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§4D§ = new b2Vec2();
         this.§@@§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§4D§.Set(0,0);
         this.§@@§.Set(0,0);
         this.§'P§ = 0;
         this.§5+§ = 0;
         this.§3e§ = 0;
         this.§ X§ = 0;
         this.motorSpeed = 0;
         this.§'#§ = false;
         this.§8%§ = false;
      }
      
      public function §4G§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §-6§ = param1;
         §?w§ = param2;
         this.§4D§ = §-6§.GetLocalPoint(param3);
         this.§@@§ = §?w§.GetLocalPoint(param3);
         this.§'P§ = §?w§.GetAngle() - §-6§.GetAngle();
      }
   }
}
