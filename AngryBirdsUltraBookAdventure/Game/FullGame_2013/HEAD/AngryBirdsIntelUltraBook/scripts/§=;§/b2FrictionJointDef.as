package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §>!g§:b2Vec2;
      
      public var §&1§:b2Vec2;
      
      public var §<!U§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§>!g§ = new b2Vec2();
         this.§&1§ = new b2Vec2();
         super();
         type = b2Joint.§"!T§;
         this.§<!U§ = 0;
         this.maxTorque = 0;
      }
      
      public function §2@§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §7l§ = param1;
         §<H§ = param2;
         this.§>!g§.SetV(§7l§.GetLocalPoint(param3));
         this.§&1§.SetV(§<H§.GetLocalPoint(param3));
      }
   }
}
