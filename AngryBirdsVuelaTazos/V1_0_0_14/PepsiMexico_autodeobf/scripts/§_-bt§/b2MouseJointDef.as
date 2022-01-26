package §_-bt§
{
   import §_-4n§.b2Vec2;
   import §_-bW§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §_-2w§:Number;
      
      public var §_-3I§:Number;
      
      public var §_-wr§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§_-X7§;
         this.§_-2w§ = 0;
         this.§_-3I§ = 5;
         this.§_-wr§ = 0.7;
      }
   }
}
