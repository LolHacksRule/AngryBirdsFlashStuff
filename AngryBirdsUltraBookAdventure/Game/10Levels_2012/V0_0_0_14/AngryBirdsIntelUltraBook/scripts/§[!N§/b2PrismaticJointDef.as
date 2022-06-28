package §[!N§
{
   import § D§.b2Body;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §9!9§:b2Vec2;
      
      public var §^G§:b2Vec2;
      
      public var §!!i§:b2Vec2;
      
      public var §1!@§:Number;
      
      public var §"!8§:Boolean;
      
      public var §#!e§:Number;
      
      public var §5!y§:Number;
      
      public var §;!J§:Boolean;
      
      public var §'&§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§9!9§ = new b2Vec2();
         this.§^G§ = new b2Vec2();
         this.§!!i§ = new b2Vec2();
         super();
         type = b2Joint.§%Y§;
         this.§!!i§.Set(1,0);
         this.§1!@§ = 0;
         this.§"!8§ = false;
         this.§#!e§ = 0;
         this.§5!y§ = 0;
         this.§;!J§ = false;
         this.§'&§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §7R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §-!O§ = param1;
         §3!u§ = param2;
         this.§9!9§ = §-!O§.GetLocalPoint(param3);
         this.§^G§ = §3!u§.GetLocalPoint(param3);
         this.§!!i§ = §-!O§.GetLocalVector(param4);
         this.§1!@§ = §3!u§.GetAngle() - §-!O§.GetAngle();
      }
   }
}
