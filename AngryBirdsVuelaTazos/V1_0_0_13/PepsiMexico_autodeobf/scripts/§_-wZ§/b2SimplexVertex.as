package §_-wZ§
{
   import §var§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §_-M3§:b2Vec2;
      
      public var §_-gM§:b2Vec2;
      
      public var §_-t7§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§_-M3§.SetV(param1.§_-M3§);
         this.§_-gM§.SetV(param1.§_-gM§);
         this.§_-t7§.SetV(param1.§_-t7§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
