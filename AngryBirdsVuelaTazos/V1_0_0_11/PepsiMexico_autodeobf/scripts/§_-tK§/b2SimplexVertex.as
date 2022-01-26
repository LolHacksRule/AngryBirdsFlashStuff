package §_-tK§
{
   import §_-dx§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §_-UL§:b2Vec2;
      
      public var §_-Mb§:b2Vec2;
      
      public var §_-D0§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§_-UL§.SetV(param1.§_-UL§);
         this.§_-Mb§.SetV(param1.§_-Mb§);
         this.§_-D0§.SetV(param1.§_-D0§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
