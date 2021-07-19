package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §0O§:b2Vec2;
      
      public var § @§:b2Vec2;
      
      public var §&l§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§0O§ = new b2Vec2();
         this.§ @§ = new b2Vec2();
         super();
         type = b2Joint.§]1§;
         this.§&l§ = 0;
         this.maxTorque = 0;
      }
      
      public function §",§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §'!n§ = param1;
         § 5§ = param2;
         this.§0O§.SetV(§'!n§.GetLocalPoint(param3));
         this.§ @§.SetV(§ 5§.GetLocalPoint(param3));
      }
   }
}
