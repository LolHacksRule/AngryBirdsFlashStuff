package §_-Nw§
{
   import §_-9z§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §_-hc§:b2Vec2;
      
      public var §_-fA§:b2Vec2;
      
      public var §_-Rj§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§_-hc§.SetV(param1.§_-hc§);
         this.§_-fA§.SetV(param1.§_-fA§);
         this.§_-Rj§.SetV(param1.§_-Rj§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
