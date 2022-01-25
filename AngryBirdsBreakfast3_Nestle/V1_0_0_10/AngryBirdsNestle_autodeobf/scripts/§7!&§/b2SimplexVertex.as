package §7!&§
{
   import §?"'§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §#5§:b2Vec2;
      
      public var §90§:b2Vec2;
      
      public var §;"5§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§#5§.SetV(param1.§#5§);
         this.§90§.SetV(param1.§90§);
         this.§;"5§.SetV(param1.§;"5§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
