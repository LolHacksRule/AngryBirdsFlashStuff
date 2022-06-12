package §4$E§
{
   import §?!C§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §^f§:b2Vec2;
      
      public var §@F§:b2Vec2;
      
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
         this.§^f§.SetV(param1.§^f§);
         this.§@F§.SetV(param1.§@F§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
