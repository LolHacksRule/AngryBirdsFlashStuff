package §6$§
{
   import §&!L§.b2Vec2;
   import §3f§.b2Body;
   import §7!C§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §8!Z§:b2Vec2;
      
      public var §]!P§:b2Vec2;
      
      public var §>!Z§:b2Vec2;
      
      public var §>C§:Boolean;
      
      public var §"!Y§:Number;
      
      public var §[%§:Number;
      
      public var §+g§:Boolean;
      
      public var §15§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§8!Z§ = new b2Vec2();
         this.§]!P§ = new b2Vec2();
         this.§>!Z§ = new b2Vec2();
         super();
         type = b2Joint.§,"§;
         this.§>!Z§.Set(1,0);
         this.§>C§ = false;
         this.§"!Y§ = 0;
         this.§[%§ = 0;
         this.§+g§ = false;
         this.§15§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §1!5§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §?!!§ = param1;
         §`!6§ = param2;
         this.§8!Z§ = §?!!§.GetLocalPoint(param3);
         this.§]!P§ = §`!6§.GetLocalPoint(param3);
         this.§>!Z§ = §?!!§.GetLocalVector(param4);
      }
   }
}
