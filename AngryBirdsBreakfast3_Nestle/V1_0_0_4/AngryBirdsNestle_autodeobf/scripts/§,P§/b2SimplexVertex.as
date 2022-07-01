package §,P§
{
   import §-%§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §6!f§:b2Vec2;
      
      public var §@!i§:b2Vec2;
      
      public var §;E§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§6!f§.SetV(param1.§6!f§);
         this.§@!i§.SetV(param1.§@!i§);
         this.§;E§.SetV(param1.§;E§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
