package §_-mg§
{
   import §_-bA§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §_-Wl§:b2Vec2;
      
      public var §_-9n§:b2Vec2;
      
      public var §_-4M§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§_-Wl§.SetV(param1.§_-Wl§);
         this.§_-9n§.SetV(param1.§_-9n§);
         this.§_-4M§.SetV(param1.§_-4M§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
