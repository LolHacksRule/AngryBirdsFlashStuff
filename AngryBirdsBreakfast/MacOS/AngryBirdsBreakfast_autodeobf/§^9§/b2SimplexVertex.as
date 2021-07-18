package §^9§
{
   import §6Z§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §1?§:b2Vec2;
      
      public var §[!T§:b2Vec2;
      
      public var §%6§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§1?§.SetV(param1.§1?§);
         this.§[!T§.SetV(param1.§[!T§);
         this.§%6§.SetV(param1.§%6§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
