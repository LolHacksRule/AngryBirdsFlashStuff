package §_-Et§
{
   import §_-Zl§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §_-03§:b2Vec2;
      
      public var §_-8U§:b2Vec2;
      
      public var §_-et§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§_-03§.SetV(param1.§_-03§);
         this.§_-8U§.SetV(param1.§_-8U§);
         this.§_-et§.SetV(param1.§_-et§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
