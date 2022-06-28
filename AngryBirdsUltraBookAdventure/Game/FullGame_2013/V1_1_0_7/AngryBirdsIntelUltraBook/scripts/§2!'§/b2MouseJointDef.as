package §2!'§
{
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §6""§:Number;
      
      public var §'S§:Number;
      
      public var §&!u§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§%![§;
         this.§6""§ = 0;
         this.§'S§ = 5;
         this.§&!u§ = 0.7;
      }
   }
}
