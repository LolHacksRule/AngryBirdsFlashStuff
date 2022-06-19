package §_-ol§
{
   import §_-F2§.b2Vec2;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §_-5J§:Number;
      
      public var §_-NZ§:Number;
      
      public var §_-EV§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§_-9P§;
         this.§_-5J§ = 0;
         this.§_-NZ§ = 5;
         this.§_-EV§ = 0.7;
      }
   }
}
