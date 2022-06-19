package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var §=L§:b2Vec2;
      
      public var §49§:Number;
      
      public var § c§:Boolean;
      
      public var §&#§:Number;
      
      public var §7o§:Number;
      
      public var §32§:Boolean;
      
      public var §&j§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§!!U§ = new b2Vec2();
         this.§"!'§ = new b2Vec2();
         this.§=L§ = new b2Vec2();
         super();
         type = b2Joint.§3!;§;
         this.§=L§.Set(1,0);
         this.§49§ = 0;
         this.§ c§ = false;
         this.§&#§ = 0;
         this.§7o§ = 0;
         this.§32§ = false;
         this.§&j§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §-'§ = param1;
         §<!L§ = param2;
         this.§!!U§ = §-'§.GetLocalPoint(param3);
         this.§"!'§ = §<!L§.GetLocalPoint(param3);
         this.§=L§ = §-'§.GetLocalVector(param4);
         this.§49§ = §<!L§.GetAngle() - §-'§.GetAngle();
      }
   }
}
