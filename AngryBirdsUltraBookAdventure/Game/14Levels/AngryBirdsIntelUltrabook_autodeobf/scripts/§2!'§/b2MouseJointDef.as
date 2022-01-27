package §2!'§
{
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §6""§:Number;
      
      public var §9!@§:Number;
      
      public var §6V§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§%![§;
         this.§6""§ = 0;
         this.§9!@§ = 5;
         this.§6V§ = 0.7;
      }
   }
}
