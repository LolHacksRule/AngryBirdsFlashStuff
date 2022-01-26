package §_-E6§
{
   import §_-dx§.b2Vec2;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §_-Nd§:Number;
      
      public var §_-xZ§:Number;
      
      public var §_-BC§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§_-r9§;
         this.§_-Nd§ = 0;
         this.§_-xZ§ = 5;
         this.§_-BC§ = 0.7;
      }
   }
}
