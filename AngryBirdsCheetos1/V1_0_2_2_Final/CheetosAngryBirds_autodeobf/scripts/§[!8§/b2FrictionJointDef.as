package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §;9§:b2Vec2;
      
      public var §-y§:b2Vec2;
      
      public var §[!A§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§;9§ = new b2Vec2();
         this.§-y§ = new b2Vec2();
         super();
         type = b2Joint.§#!N§;
         this.§[!A§ = 0;
         this.maxTorque = 0;
      }
      
      public function §>b§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §8!5§ = param1;
         §0n§ = param2;
         this.§;9§.SetV(§8!5§.GetLocalPoint(param3));
         this.§-y§.SetV(§0n§.GetLocalPoint(param3));
      }
   }
}
