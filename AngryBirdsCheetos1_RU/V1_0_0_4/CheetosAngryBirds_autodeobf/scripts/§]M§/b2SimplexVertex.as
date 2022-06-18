package §]M§
{
   import §5!K§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §3!]§:b2Vec2;
      
      public var §9!$§:b2Vec2;
      
      public var §3T§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§3!]§.SetV(param1.§3!]§);
         this.§9!$§.SetV(param1.§9!$§);
         this.§3T§.SetV(param1.§3T§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
