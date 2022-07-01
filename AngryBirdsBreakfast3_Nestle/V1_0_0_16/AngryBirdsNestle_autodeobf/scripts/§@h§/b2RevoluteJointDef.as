package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §8D§:b2Vec2;
      
      public var §@"$§:b2Vec2;
      
      public var §7!L§:Number;
      
      public var §05§:Boolean;
      
      public var §3!i§:Number;
      
      public var §^!t§:Number;
      
      public var §9!g§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §"7§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§8D§ = new b2Vec2();
         this.§@"$§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§8D§.Set(0,0);
         this.§@"$§.Set(0,0);
         this.§7!L§ = 0;
         this.§3!i§ = 0;
         this.§^!t§ = 0;
         this.§"7§ = 0;
         this.motorSpeed = 0;
         this.§05§ = false;
         this.§9!g§ = false;
      }
      
      public function §6R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §9!w§ = param1;
         §>!W§ = param2;
         this.§8D§ = §9!w§.GetLocalPoint(param3);
         this.§@"$§ = §>!W§.GetLocalPoint(param3);
         this.§7!L§ = §>!W§.GetAngle() - §9!w§.GetAngle();
      }
   }
}
