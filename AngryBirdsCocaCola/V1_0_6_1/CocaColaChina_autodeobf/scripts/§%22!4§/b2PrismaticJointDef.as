package §"!4§
{
   import § y§.b2Body;
   import §54§.b2internal;
   import §;h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §9%§:b2Vec2;
      
      public var §+!"§:b2Vec2;
      
      public var § =§:b2Vec2;
      
      public var §,!U§:Number;
      
      public var §@H§:Boolean;
      
      public var §=!8§:Number;
      
      public var §,,§:Number;
      
      public var §#!5§:Boolean;
      
      public var §8'§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§9%§ = new b2Vec2();
         this.§+!"§ = new b2Vec2();
         this.§ =§ = new b2Vec2();
         super();
         type = b2Joint.§;2§;
         this.§ =§.Set(1,0);
         this.§,!U§ = 0;
         this.§@H§ = false;
         this.§=!8§ = 0;
         this.§,,§ = 0;
         this.§#!5§ = false;
         this.§8'§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §#§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §8L§ = param1;
         §4!H§ = param2;
         this.§9%§ = §8L§.GetLocalPoint(param3);
         this.§+!"§ = §4!H§.GetLocalPoint(param3);
         this.§ =§ = §8L§.GetLocalVector(param4);
         this.§,!U§ = §4!H§.GetAngle() - §8L§.GetAngle();
      }
   }
}
