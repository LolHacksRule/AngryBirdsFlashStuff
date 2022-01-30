package §"s§
{
   import §7!F§.b2internal;
   import §[K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §+"!§:Number;
      
      public var §2!Z§:Number;
      
      public var §"!%§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§@!3§;
         this.§+"!§ = 0;
         this.§2!Z§ = 5;
         this.§"!%§ = 0.7;
      }
   }
}
