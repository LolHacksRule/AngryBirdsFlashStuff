package §const§
{
   import §_-b4§.b2internal;
   import §_-cP§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §_-Ao§:Number;
      
      public var §_-ek§:Number;
      
      public var §_-DN§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§_-Y5§;
         this.§_-Ao§ = 0;
         this.§_-ek§ = 5;
         this.§_-DN§ = 0.7;
      }
   }
}
