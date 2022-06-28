package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var §6""§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§'G§ = new b2Vec2();
         this.§true§ = new b2Vec2();
         super();
         type = b2Joint.§>!`§;
         this.§6""§ = 0;
         this.maxTorque = 0;
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §19§ = param1;
         §"@§ = param2;
         this.§'G§.SetV(§19§.GetLocalPoint(param3));
         this.§true§.SetV(§"@§.GetLocalPoint(param3));
      }
   }
}
