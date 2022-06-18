package §<!^§
{
   import §&!+§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §=6§:b2Vec2;
      
      public var §]!R§:b2Vec2;
      
      public var §["§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§=6§.SetV(param1.§=6§);
         this.§]!R§.SetV(param1.§]!R§);
         this.§["§.SetV(param1.§["§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
