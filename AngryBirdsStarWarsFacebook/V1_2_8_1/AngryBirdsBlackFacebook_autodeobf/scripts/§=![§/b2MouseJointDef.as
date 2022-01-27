package §=![§
{
   import §7!I§.b2internal;
   import §7"A§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §7"a§:Number;
      
      public var §?"^§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§-!M§;
         this.§7"a§ = 0;
         this.§?"^§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
