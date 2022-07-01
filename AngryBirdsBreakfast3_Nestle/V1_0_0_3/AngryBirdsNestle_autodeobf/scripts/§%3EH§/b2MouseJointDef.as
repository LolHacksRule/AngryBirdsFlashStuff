package §>H§
{
   import § !%§.b2internal;
   import §,!k§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §6T§:Number;
      
      public var §;!3§:Number;
      
      public var §]^§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§%""§;
         this.§6T§ = 0;
         this.§;!3§ = 5;
         this.§]^§ = 0.7;
      }
   }
}
