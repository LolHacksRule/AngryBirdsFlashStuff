package §_-1N§
{
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §_-O9§:Number;
      
      public var §_-Kf§:Number;
      
      public var §_-Co§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§_-5H§;
         this.§_-O9§ = 0;
         this.§_-Kf§ = 5;
         this.§_-Co§ = 0.7;
      }
   }
}
