package §_-Et§
{
   import §_-Zl§.b2Mat22;
   import §_-Zl§.b2Vec2;
   
   public class b2OBB
   {
       
      
      public var R:b2Mat22;
      
      public var center:b2Vec2;
      
      public var §_-mM§:b2Vec2;
      
      public function b2OBB()
      {
         this.R = new b2Mat22();
         this.center = new b2Vec2();
         this.§_-mM§ = new b2Vec2();
         super();
      }
   }
}
