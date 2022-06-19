package §6!d§
{
   import §!"8§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §+!K§:b2Vec2;
      
      public var §7!^§:b2Vec2;
      
      public var §-&§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§+!K§.SetV(param1.§+!K§);
         this.§7!^§.SetV(param1.§7!^§);
         this.§-&§.SetV(param1.§-&§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
