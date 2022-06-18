package §7C§
{
   import §&!+§.b2Vec2;
   import §4!&§.b2Body;
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §,!K§:b2Vec2;
      
      public var §[!5§:b2Vec2;
      
      public var §^!Y§:Number;
      
      public var §2!'§:Boolean;
      
      public var §!g§:Number;
      
      public var §,v§:Number;
      
      public var §&!>§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §]f§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§,!K§ = new b2Vec2();
         this.§[!5§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§,!K§.Set(0,0);
         this.§[!5§.Set(0,0);
         this.§^!Y§ = 0;
         this.§!g§ = 0;
         this.§,v§ = 0;
         this.§]f§ = 0;
         this.motorSpeed = 0;
         this.§2!'§ = false;
         this.§&!>§ = false;
      }
      
      public function §1U§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §;!L§ = param1;
         §0!U§ = param2;
         this.§,!K§ = §;!L§.GetLocalPoint(param3);
         this.§[!5§ = §0!U§.GetLocalPoint(param3);
         this.§^!Y§ = §0!U§.GetAngle() - §;!L§.GetAngle();
      }
   }
}
