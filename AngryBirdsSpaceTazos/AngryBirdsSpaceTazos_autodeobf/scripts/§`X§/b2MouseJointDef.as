package §`X§
{
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §1^§:Number;
      
      public var §^J§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§in §;
         this.§1^§ = 0;
         this.§^J§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
