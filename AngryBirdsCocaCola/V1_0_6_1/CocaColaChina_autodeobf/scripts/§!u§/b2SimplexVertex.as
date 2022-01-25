package §!u§
{
   import §;h§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §+!d§:b2Vec2;
      
      public var §,!-§:b2Vec2;
      
      public var §"!2§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§+!d§.SetV(param1.§+!d§);
         this.§,!-§.SetV(param1.§,!-§);
         this.§"!2§.SetV(param1.§"!2§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
