package §3"q§
{
   import §0m§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §3"c§:b2Vec2;
      
      public var §9"M§:b2Vec2;
      
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
         this.§3"c§.SetV(param1.§3"c§);
         this.§9"M§.SetV(param1.§9"M§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
