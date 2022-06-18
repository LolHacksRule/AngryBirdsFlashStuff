package §9$A§
{
   import §6!R§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §1#H§:b2Vec2;
      
      public var §7!m§:b2Vec2;
      
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
         this.§1#H§.SetV(param1.§1#H§);
         this.§7!m§.SetV(param1.§7!m§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
