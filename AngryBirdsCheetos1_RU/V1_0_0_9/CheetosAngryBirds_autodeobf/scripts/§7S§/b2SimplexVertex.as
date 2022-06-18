package §7S§
{
   import §;U§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §#!!§:b2Vec2;
      
      public var §5!@§:b2Vec2;
      
      public var §6!1§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§#!!§.SetV(param1.§#!!§);
         this.§5!@§.SetV(param1.§5!@§);
         this.§6!1§.SetV(param1.§6!1§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
