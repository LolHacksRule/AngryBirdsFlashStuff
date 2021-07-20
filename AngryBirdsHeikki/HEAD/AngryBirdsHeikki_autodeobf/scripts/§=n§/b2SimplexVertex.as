package §=n§
{
   import §`!^§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §5A§:b2Vec2;
      
      public var §^T§:b2Vec2;
      
      public var §@!T§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§5A§.SetV(param1.§5A§);
         this.§^T§.SetV(param1.§^T§);
         this.§@!T§.SetV(param1.§@!T§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
