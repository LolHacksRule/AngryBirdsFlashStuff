package §%!B§
{
   import §&!B§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §#!a§:b2Vec2;
      
      public var §=9§:b2Vec2;
      
      public var §0R§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§#!a§.SetV(param1.§#!a§);
         this.§=9§.SetV(param1.§=9§);
         this.§0R§.SetV(param1.§0R§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
