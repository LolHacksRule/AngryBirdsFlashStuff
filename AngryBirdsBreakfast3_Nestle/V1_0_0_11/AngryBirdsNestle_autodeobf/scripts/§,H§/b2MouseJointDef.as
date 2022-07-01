package §,H§
{
   import §'I§.b2internal;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §^!Q§:Number;
      
      public var §;K§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§<! §;
         this.§^!Q§ = 0;
         this.§;K§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
