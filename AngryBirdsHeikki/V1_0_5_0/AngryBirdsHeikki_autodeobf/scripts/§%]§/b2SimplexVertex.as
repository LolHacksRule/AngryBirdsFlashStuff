package §%]§
{
   import §,!3§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §+!E§:b2Vec2;
      
      public var §"!0§:b2Vec2;
      
      public var §9=§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§+!E§.SetV(param1.§+!E§);
         this.§"!0§.SetV(param1.§"!0§);
         this.§9=§.SetV(param1.§9=§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
