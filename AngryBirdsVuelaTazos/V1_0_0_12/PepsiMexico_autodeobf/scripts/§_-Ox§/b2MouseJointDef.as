package §_-Ox§
{
   import §_-9z§.b2Vec2;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §_-li§:Number;
      
      public var §_-Dr§:Number;
      
      public var §_-Dj§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§_-DQ§;
         this.§_-li§ = 0;
         this.§_-Dr§ = 5;
         this.§_-Dj§ = 0.7;
      }
   }
}
