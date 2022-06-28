package §[!N§
{
   import § D§.b2Body;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §9!9§:b2Vec2;
      
      public var §^G§:b2Vec2;
      
      public var §1!@§:Number;
      
      public var §"!8§:Boolean;
      
      public var §8!7§:Number;
      
      public var §'!w§:Number;
      
      public var §;!J§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §%!9§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§9!9§ = new b2Vec2();
         this.§^G§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§9!9§.Set(0,0);
         this.§^G§.Set(0,0);
         this.§1!@§ = 0;
         this.§8!7§ = 0;
         this.§'!w§ = 0;
         this.§%!9§ = 0;
         this.motorSpeed = 0;
         this.§"!8§ = false;
         this.§;!J§ = false;
      }
      
      public function §7R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §-!O§ = param1;
         §3!u§ = param2;
         this.§9!9§ = §-!O§.GetLocalPoint(param3);
         this.§^G§ = §3!u§.GetLocalPoint(param3);
         this.§1!@§ = §3!u§.GetAngle() - §-!O§.GetAngle();
      }
   }
}
