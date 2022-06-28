package §&!-§
{
   import §8>§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §7!C§:b2Vec2;
      
      public var §>!c§:b2Vec2;
      
      public var §"S§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§7!C§.SetV(param1.§7!C§);
         this.§>!c§.SetV(param1.§>!c§);
         this.§"S§.SetV(param1.§"S§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
