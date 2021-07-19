package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §;9§:b2Vec2;
      
      public var §-y§:b2Vec2;
      
      public var §;=§:Number;
      
      public var §1&§:Boolean;
      
      public var §4O§:Number;
      
      public var §0"§:Number;
      
      public var §^=§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §5!F§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§;9§ = new b2Vec2();
         this.§-y§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§;9§.Set(0,0);
         this.§-y§.Set(0,0);
         this.§;=§ = 0;
         this.§4O§ = 0;
         this.§0"§ = 0;
         this.§5!F§ = 0;
         this.motorSpeed = 0;
         this.§1&§ = false;
         this.§^=§ = false;
      }
      
      public function §>b§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §8!5§ = param1;
         §0n§ = param2;
         this.§;9§ = §8!5§.GetLocalPoint(param3);
         this.§-y§ = §0n§.GetLocalPoint(param3);
         this.§;=§ = §0n§.GetAngle() - §8!5§.GetAngle();
      }
   }
}
