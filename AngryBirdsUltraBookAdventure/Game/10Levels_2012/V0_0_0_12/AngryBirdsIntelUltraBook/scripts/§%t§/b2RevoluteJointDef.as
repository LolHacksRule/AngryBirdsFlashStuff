package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §`!V§:b2Vec2;
      
      public var §6$§:b2Vec2;
      
      public var §]!4§:Number;
      
      public var §?P§:Boolean;
      
      public var §%^§:Number;
      
      public var §@!A§:Number;
      
      public var §"!<§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §4§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§`!V§ = new b2Vec2();
         this.§6$§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§`!V§.Set(0,0);
         this.§6$§.Set(0,0);
         this.§]!4§ = 0;
         this.§%^§ = 0;
         this.§@!A§ = 0;
         this.§4§ = 0;
         this.motorSpeed = 0;
         this.§?P§ = false;
         this.§"!<§ = false;
      }
      
      public function §;o§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §^!G§ = param1;
         §-z§ = param2;
         this.§`!V§ = §^!G§.GetLocalPoint(param3);
         this.§6$§ = §-z§.GetLocalPoint(param3);
         this.§]!4§ = §-z§.GetAngle() - §^!G§.GetAngle();
      }
   }
}
