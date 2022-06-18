package § G§
{
   import §9"§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §<j§:b2Vec2;
      
      public var § a§:b2Vec2;
      
      public var §+!!§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§<j§.SetV(param1.§<j§);
         this.§ a§.SetV(param1.§ a§);
         this.§+!!§.SetV(param1.§+!!§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
