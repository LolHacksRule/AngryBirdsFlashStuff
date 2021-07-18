package §3c§
{
   import §9t§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §,"#§:b2Vec2;
      
      public var §?!Q§:b2Vec2;
      
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
         this.§,"#§.SetV(param1.§,"#§);
         this.§?!Q§.SetV(param1.§?!Q§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
