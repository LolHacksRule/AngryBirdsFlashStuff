package §[9§
{
   import §'!a§.b2internal;
   import §6!n§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §0j§:Number;
      
      public var §2I§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§[!Q§;
         this.§0j§ = 0;
         this.§2I§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
