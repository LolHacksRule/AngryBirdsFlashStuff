package §1!1§
{
   import §?!h§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §^q§:b2Vec2;
      
      public var §4"6§:b2Vec2;
      
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
         this.§^q§.SetV(param1.§^q§);
         this.§4"6§.SetV(param1.§4"6§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
