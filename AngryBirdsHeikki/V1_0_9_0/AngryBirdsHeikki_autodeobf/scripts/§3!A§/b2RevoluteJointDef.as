package §3!A§
{
   import § !_§.b2Vec2;
   import §+&§.b2internal;
   import §^!Z§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §?&§:b2Vec2;
      
      public var §4t§:b2Vec2;
      
      public var §9N§:Number;
      
      public var §1!<§:Boolean;
      
      public var §?y§:Number;
      
      public var §>!D§:Number;
      
      public var §6!O§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §3z§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§?&§ = new b2Vec2();
         this.§4t§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§?&§.Set(0,0);
         this.§4t§.Set(0,0);
         this.§9N§ = 0;
         this.§?y§ = 0;
         this.§>!D§ = 0;
         this.§3z§ = 0;
         this.motorSpeed = 0;
         this.§1!<§ = false;
         this.§6!O§ = false;
      }
      
      public function §8_§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §[!N§ = param1;
         §0!'§ = param2;
         this.§?&§ = §[!N§.GetLocalPoint(param3);
         this.§4t§ = §0!'§.GetLocalPoint(param3);
         this.§9N§ = §0!'§.GetAngle() - §[!N§.GetAngle();
      }
   }
}
