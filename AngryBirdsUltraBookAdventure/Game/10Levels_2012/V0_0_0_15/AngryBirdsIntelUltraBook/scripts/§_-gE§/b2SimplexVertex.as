package §_-gE§
{
   import §_-Yp§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §_-9x§:b2Vec2;
      
      public var §_-8S§:b2Vec2;
      
      public var §_-04b§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§_-9x§.SetV(param1.§_-9x§);
         this.§_-8S§.SetV(param1.§_-8S§);
         this.§_-04b§.SetV(param1.§_-04b§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
