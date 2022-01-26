package §_-E§
{
   import §_-Jf§.b2internal;
   import §_-Vn§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §_-4V§:Number;
      
      public var §_-R-§:Number;
      
      public var §_-q6§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§_-2m§;
         this.§_-4V§ = 0;
         this.§_-R-§ = 5;
         this.§_-q6§ = 0.7;
      }
   }
}
