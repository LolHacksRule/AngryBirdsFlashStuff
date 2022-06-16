package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §#C§:b2Vec2;
      
      public var §^!J§:b2Vec2;
      
      public var §"#§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§#C§ = new b2Vec2();
         this.§^!J§ = new b2Vec2();
         super();
         type = b2Joint.§4!m§;
         this.§"#§ = 0;
         this.maxTorque = 0;
      }
      
      public function §`!r§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §!!v§ = param1;
         §'!4§ = param2;
         this.§#C§.SetV(§!!v§.GetLocalPoint(param3));
         this.§^!J§.SetV(§'!4§.GetLocalPoint(param3));
      }
   }
}
