package §<!!§
{
   import §"U§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var dynamic:b2Vec2;
      
      public var §1j§:b2Vec2;
      
      public var §!!T§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.dynamic.SetV(param1.dynamic);
         this.§1j§.SetV(param1.§1j§);
         this.§!!T§.SetV(param1.§!!T§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
