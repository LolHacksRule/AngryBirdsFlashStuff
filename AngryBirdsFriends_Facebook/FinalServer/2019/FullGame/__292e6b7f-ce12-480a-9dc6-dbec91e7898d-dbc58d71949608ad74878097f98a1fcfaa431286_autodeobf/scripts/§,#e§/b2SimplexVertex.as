package §,#E§
{
   import §04§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §%#E§:b2Vec2;
      
      public var §'y§:b2Vec2;
      
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
         this.§%#E§.SetV(param1.§%#E§);
         this.§'y§.SetV(param1.§'y§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
