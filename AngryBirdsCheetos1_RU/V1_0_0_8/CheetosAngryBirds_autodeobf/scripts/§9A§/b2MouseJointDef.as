package §9A§
{
   import §'!3§.b2internal;
   import §3q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §%E§:Number;
      
      public var §60§:Number;
      
      public var §>F§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§!L§;
         this.§%E§ = 0;
         this.§60§ = 5;
         this.§>F§ = 0.7;
      }
   }
}
