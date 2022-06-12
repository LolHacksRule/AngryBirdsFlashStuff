package §3"q§
{
   import §0m§.b2Mat22;
   import §0m§.b2Vec2;
   
   public class b2OBB
   {
       
      
      public var R:b2Mat22;
      
      public var center:b2Vec2;
      
      public var §&!n§:b2Vec2;
      
      public function b2OBB()
      {
         this.R = new b2Mat22();
         this.center = new b2Vec2();
         this.§&!n§ = new b2Vec2();
         super();
      }
   }
}
