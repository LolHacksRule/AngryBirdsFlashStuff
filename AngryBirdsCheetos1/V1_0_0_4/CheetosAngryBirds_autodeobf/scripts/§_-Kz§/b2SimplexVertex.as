package §_-Kz§
{
   import §_-Vn§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §_-fv§:b2Vec2;
      
      public var §_-9W§:b2Vec2;
      
      public var §_-Oo§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§_-fv§.SetV(param1.§_-fv§);
         this.§_-9W§.SetV(param1.§_-9W§);
         this.§_-Oo§.SetV(param1.§_-Oo§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
