package §6f§
{
   import §,!k§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §#!,§:b2Vec2;
      
      public var §8r§:b2Vec2;
      
      public var §3`§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§#!,§.SetV(param1.§#!,§);
         this.§8r§.SetV(param1.§8r§);
         this.§3`§.SetV(param1.§3`§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
