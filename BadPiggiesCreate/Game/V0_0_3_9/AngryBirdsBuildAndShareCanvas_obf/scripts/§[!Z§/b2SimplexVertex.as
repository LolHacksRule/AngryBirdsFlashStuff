package §[!Z§
{
   import §-!G§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §^_§:b2Vec2;
      
      public var §%g§:b2Vec2;
      
      public var w:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§^_§.SetV(param1.§^_§);
         this.§%g§.SetV(param1.§%g§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
