package §>!Z§
{
   import §&H§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §<o§:b2Vec2;
      
      public var §4x§:b2Vec2;
      
      public var §=Q§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§<o§.SetV(param1.§<o§);
         this.§4x§.SetV(param1.§4x§);
         this.§=Q§.SetV(param1.§=Q§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
