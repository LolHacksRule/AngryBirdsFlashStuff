package § Y§
{
   import §<!8§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §]!3§:b2Vec2;
      
      public var §,y§:b2Vec2;
      
      public var §0!5§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§]!3§.SetV(param1.§]!3§);
         this.§,y§.SetV(param1.§,y§);
         this.§0!5§.SetV(param1.§0!5§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
