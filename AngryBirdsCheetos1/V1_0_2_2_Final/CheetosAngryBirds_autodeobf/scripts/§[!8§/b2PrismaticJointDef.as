package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §;9§:b2Vec2;
      
      public var §-y§:b2Vec2;
      
      public var §0v§:b2Vec2;
      
      public var §;=§:Number;
      
      public var §1&§:Boolean;
      
      public var §[F§:Number;
      
      public var §>Z§:Number;
      
      public var §^=§:Boolean;
      
      public var §>!Y§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§;9§ = new b2Vec2();
         this.§-y§ = new b2Vec2();
         this.§0v§ = new b2Vec2();
         super();
         type = b2Joint.§8z§;
         this.§0v§.Set(1,0);
         this.§;=§ = 0;
         this.§1&§ = false;
         this.§[F§ = 0;
         this.§>Z§ = 0;
         this.§^=§ = false;
         this.§>!Y§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §>b§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §8!5§ = param1;
         §0n§ = param2;
         this.§;9§ = §8!5§.GetLocalPoint(param3);
         this.§-y§ = §0n§.GetLocalPoint(param3);
         this.§0v§ = §8!5§.GetLocalVector(param4);
         this.§;=§ = §0n§.GetAngle() - §8!5§.GetAngle();
      }
   }
}
