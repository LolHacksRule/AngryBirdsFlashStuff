package §%4§
{
   import §<!a§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §9§:b2Vec2;
      
      public var §+m§:b2Vec2;
      
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
         this.§9§.SetV(param1.§9§);
         this.§+m§.SetV(param1.§+m§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
