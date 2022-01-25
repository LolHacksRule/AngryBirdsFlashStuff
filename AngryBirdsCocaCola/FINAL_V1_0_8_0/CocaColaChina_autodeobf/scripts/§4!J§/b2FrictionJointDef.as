package §4!J§
{
   import §6V§.b2Vec2;
   import §<!L§.b2Body;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §;8§:b2Vec2;
      
      public var §;!c§:b2Vec2;
      
      public var §0!I§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§;8§ = new b2Vec2();
         this.§;!c§ = new b2Vec2();
         super();
         type = b2Joint.§6!5§;
         this.§0!I§ = 0;
         this.maxTorque = 0;
      }
      
      public function §2#§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §;!9§ = param1;
         §;!,§ = param2;
         this.§;8§.SetV(§;!9§.GetLocalPoint(param3));
         this.§;!c§.SetV(§;!,§.GetLocalPoint(param3));
      }
   }
}
