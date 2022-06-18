package §8<§
{
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §;!,§:b2Vec2;
      
      public var §const§:b2Vec2;
      
      public var § 7§:Number;
      
      public var §21§:Boolean;
      
      public var §[5§:Number;
      
      public var §5!D§:Number;
      
      public var § '§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §4!Y§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§;!,§ = new b2Vec2();
         this.§const§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§;!,§.Set(0,0);
         this.§const§.Set(0,0);
         this.§ 7§ = 0;
         this.§[5§ = 0;
         this.§5!D§ = 0;
         this.§4!Y§ = 0;
         this.motorSpeed = 0;
         this.§21§ = false;
         this.§ '§ = false;
      }
      
      public function §9!K§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §,w§ = param1;
         §2h§ = param2;
         this.§;!,§ = §,w§.GetLocalPoint(param3);
         this.§const§ = §2h§.GetLocalPoint(param3);
         this.§ 7§ = §2h§.GetAngle() - §,w§.GetAngle();
      }
   }
}
