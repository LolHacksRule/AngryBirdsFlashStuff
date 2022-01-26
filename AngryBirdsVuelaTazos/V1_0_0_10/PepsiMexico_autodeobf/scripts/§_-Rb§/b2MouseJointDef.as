package §_-Rb§
{
   import §_-Zl§.b2Vec2;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §_-GC§:Number;
      
      public var §_-8R§:Number;
      
      public var §_-XX§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§_-fD§;
         this.§_-GC§ = 0;
         this.§_-8R§ = 5;
         this.§_-XX§ = 0.7;
      }
   }
}
