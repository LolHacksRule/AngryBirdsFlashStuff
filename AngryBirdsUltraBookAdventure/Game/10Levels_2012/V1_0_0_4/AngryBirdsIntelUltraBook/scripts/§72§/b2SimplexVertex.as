package §72§
{
   import §>H§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §[!r§:b2Vec2;
      
      public var §3!$§:b2Vec2;
      
      public var §^N§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§[!r§.SetV(param1.§[!r§);
         this.§3!$§.SetV(param1.§3!$§);
         this.§^N§.SetV(param1.§^N§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
