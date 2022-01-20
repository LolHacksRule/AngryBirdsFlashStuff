package §,!V§
{
   import §+S§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var § !7§:b2Vec2;
      
      public var §0!M§:b2Vec2;
      
      public var §8d§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§ !7§.SetV(param1.§ !7§);
         this.§0!M§.SetV(param1.§0!M§);
         this.§8d§.SetV(param1.§8d§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
