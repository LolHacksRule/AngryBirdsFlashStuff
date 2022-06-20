package §9$A§
{
   import §6!R§.b2Mat22;
   import §6!R§.b2Vec2;
   
   public class b2OBB
   {
       
      
      public var R:b2Mat22;
      
      public var center:b2Vec2;
      
      public var §2"y§:b2Vec2;
      
      public function b2OBB()
      {
         this.R = new b2Mat22();
         this.center = new b2Vec2();
         this.§2"y§ = new b2Vec2();
         super();
      }
   }
}
