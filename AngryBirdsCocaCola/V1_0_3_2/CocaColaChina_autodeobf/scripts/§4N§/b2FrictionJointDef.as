package §4N§
{
   import §"!R§.b2internal;
   import §=!U§.b2Body;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §7z§:b2Vec2;
      
      public var §#t§:b2Vec2;
      
      public var §'!a§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§7z§ = new b2Vec2();
         this.§#t§ = new b2Vec2();
         super();
         type = b2Joint.§3t§;
         this.§'!a§ = 0;
         this.maxTorque = 0;
      }
      
      public function §4$§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §]!M§ = param1;
         §'!Q§ = param2;
         this.§7z§.SetV(§]!M§.GetLocalPoint(param3));
         this.§#t§.SetV(§'!Q§.GetLocalPoint(param3));
      }
   }
}
