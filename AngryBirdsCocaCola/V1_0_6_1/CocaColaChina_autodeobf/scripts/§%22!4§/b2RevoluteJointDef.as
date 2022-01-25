package §"!4§
{
   import § y§.b2Body;
   import §54§.b2internal;
   import §;h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §9%§:b2Vec2;
      
      public var §+!"§:b2Vec2;
      
      public var §,!U§:Number;
      
      public var §@H§:Boolean;
      
      public var §&J§:Number;
      
      public var §6Z§:Number;
      
      public var §#!5§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §&!4§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§9%§ = new b2Vec2();
         this.§+!"§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§9%§.Set(0,0);
         this.§+!"§.Set(0,0);
         this.§,!U§ = 0;
         this.§&J§ = 0;
         this.§6Z§ = 0;
         this.§&!4§ = 0;
         this.motorSpeed = 0;
         this.§@H§ = false;
         this.§#!5§ = false;
      }
      
      public function §#§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §8L§ = param1;
         §4!H§ = param2;
         this.§9%§ = §8L§.GetLocalPoint(param3);
         this.§+!"§ = §4!H§.GetLocalPoint(param3);
         this.§,!U§ = §4!H§.GetAngle() - §8L§.GetAngle();
      }
   }
}
