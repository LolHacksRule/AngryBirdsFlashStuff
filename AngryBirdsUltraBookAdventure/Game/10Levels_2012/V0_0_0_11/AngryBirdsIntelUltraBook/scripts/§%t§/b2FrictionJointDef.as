package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §`!V§:b2Vec2;
      
      public var §6$§:b2Vec2;
      
      public var §3!,§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§`!V§ = new b2Vec2();
         this.§6$§ = new b2Vec2();
         super();
         type = b2Joint.§5![§;
         this.§3!,§ = 0;
         this.maxTorque = 0;
      }
      
      public function §;o§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §^!G§ = param1;
         §-z§ = param2;
         this.§`!V§.SetV(§^!G§.GetLocalPoint(param3));
         this.§6$§.SetV(§-z§.GetLocalPoint(param3));
      }
   }
}
