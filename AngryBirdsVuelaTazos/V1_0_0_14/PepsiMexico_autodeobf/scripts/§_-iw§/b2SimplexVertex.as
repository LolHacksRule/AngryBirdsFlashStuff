package §_-iw§
{
   import §_-4n§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §finally§:b2Vec2;
      
      public var §_-8K§:b2Vec2;
      
      public var §_-7n§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§finally§.SetV(param1.§finally§);
         this.§_-8K§.SetV(param1.§_-8K§);
         this.§_-7n§.SetV(param1.§_-7n§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
