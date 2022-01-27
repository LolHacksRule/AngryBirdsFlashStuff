package §8<§
{
   import §0!=§.b2Vec2;
   import §0^§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §07§:Number;
      
      public var §else§:Number;
      
      public var §`3§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§<!U§;
         this.§07§ = 0;
         this.§else§ = 5;
         this.§`3§ = 0.7;
      }
   }
}
