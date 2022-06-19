package §_-yI§
{
   import §_-cP§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §_-F7§:b2Vec2;
      
      public var §_-iq§:b2Vec2;
      
      public var §_-xr§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§_-F7§.SetV(param1.§_-F7§);
         this.§_-iq§.SetV(param1.§_-iq§);
         this.§_-xr§.SetV(param1.§_-xr§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
