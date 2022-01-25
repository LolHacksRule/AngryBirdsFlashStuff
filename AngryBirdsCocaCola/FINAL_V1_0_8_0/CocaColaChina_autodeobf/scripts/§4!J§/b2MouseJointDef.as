package §4!J§
{
   import §6V§.b2Vec2;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §0!I§:Number;
      
      public var §-!c§:Number;
      
      public var §if §:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§return§;
         this.§0!I§ = 0;
         this.§-!c§ = 5;
         this.§if § = 0.7;
      }
   }
}
