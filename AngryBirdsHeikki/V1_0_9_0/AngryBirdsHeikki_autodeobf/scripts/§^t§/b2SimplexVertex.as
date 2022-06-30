package §^t§
{
   import § !_§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §,U§:b2Vec2;
      
      public var §9R§:b2Vec2;
      
      public var §4!_§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§,U§.SetV(param1.§,U§);
         this.§9R§.SetV(param1.§9R§);
         this.§4!_§.SetV(param1.§4!_§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
