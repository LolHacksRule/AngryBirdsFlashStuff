package §8w§
{
   import §;%§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §%![§:b2Vec2;
      
      public var §8!d§:b2Vec2;
      
      public var §&U§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§%![§.SetV(param1.§%![§);
         this.§8!d§.SetV(param1.§8!d§);
         this.§&U§.SetV(param1.§&U§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
