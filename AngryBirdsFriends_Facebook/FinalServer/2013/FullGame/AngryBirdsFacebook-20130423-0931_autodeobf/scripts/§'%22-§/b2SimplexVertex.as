package §'"-§
{
   import §6!^§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §["L§:b2Vec2;
      
      public var §9!U§:b2Vec2;
      
      public var §&!t§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§["L§.SetV(param1.§["L§);
         this.§9!U§.SetV(param1.§9!U§);
         this.§&!t§.SetV(param1.§&!t§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
