package § !0§
{
   import §7F§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §'#§:b2Vec2;
      
      public var §3"§:b2Vec2;
      
      public var §0!=§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§'#§.SetV(param1.§'#§);
         this.§3"§.SetV(param1.§3"§);
         this.§0!=§.SetV(param1.§0!=§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
