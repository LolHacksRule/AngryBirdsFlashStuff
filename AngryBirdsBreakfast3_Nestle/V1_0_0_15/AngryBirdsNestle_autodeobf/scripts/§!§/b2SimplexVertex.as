package §!§
{
   import §@!E§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §^t§:b2Vec2;
      
      public var §%Z§:b2Vec2;
      
      public var §!R§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§^t§.SetV(param1.§^t§);
         this.§%Z§.SetV(param1.§%Z§);
         this.§!R§.SetV(param1.§!R§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
