package §3"5§
{
   import §[R§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §5#1§:b2Vec2;
      
      public var §6!V§:b2Vec2;
      
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
         this.§5#1§.SetV(param1.§5#1§);
         this.§6!V§.SetV(param1.§6!V§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
