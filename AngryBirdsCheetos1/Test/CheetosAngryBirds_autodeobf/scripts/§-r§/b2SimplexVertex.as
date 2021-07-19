package §-r§
{
   import §6!H§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §,!?§:b2Vec2;
      
      public var §`-§:b2Vec2;
      
      public var §-T§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§,!?§.SetV(param1.§,!?§);
         this.§`-§.SetV(param1.§`-§);
         this.§-T§.SetV(param1.§-T§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
