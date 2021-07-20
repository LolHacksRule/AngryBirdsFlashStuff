package §!4§
{
   import §6A§.b2Mat22;
   import §6A§.b2Vec2;
   
   public class b2OBB
   {
       
      
      public var R:b2Mat22;
      
      public var center:b2Vec2;
      
      public var §!N§:b2Vec2;
      
      public function b2OBB()
      {
         this.R = new b2Mat22();
         this.center = new b2Vec2();
         this.§!N§ = new b2Vec2();
         super();
      }
   }
}
