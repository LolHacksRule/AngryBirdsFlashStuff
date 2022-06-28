package §`!H§
{
   import §?!&§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §28§:b2Vec2;
      
      public var §`j§:b2Vec2;
      
      public var §81§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§28§.SetV(param1.§28§);
         this.§`j§.SetV(param1.§`j§);
         this.§81§.SetV(param1.§81§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
