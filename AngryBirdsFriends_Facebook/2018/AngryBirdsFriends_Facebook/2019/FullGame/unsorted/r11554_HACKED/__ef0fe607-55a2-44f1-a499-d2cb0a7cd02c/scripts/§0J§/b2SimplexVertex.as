package §0J§
{
   import §`# §.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §@#X§:b2Vec2;
      
      public var §?#t§:b2Vec2;
      
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
         this.§@#X§.SetV(param1.§@#X§);
         this.§?#t§.SetV(param1.§?#t§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
