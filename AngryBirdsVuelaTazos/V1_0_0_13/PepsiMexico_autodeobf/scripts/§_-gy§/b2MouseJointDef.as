package §_-gy§
{
   import §_-SM§.b2internal;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §_-Fz§:Number;
      
      public var §_-DV§:Number;
      
      public var §_-qi§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§_-2P§;
         this.§_-Fz§ = 0;
         this.§_-DV§ = 5;
         this.§_-qi§ = 0.7;
      }
   }
}
