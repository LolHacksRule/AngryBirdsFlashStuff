package §!4§
{
   import §6A§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §2!=§:b2Vec2;
      
      public var §8!Z§:b2Vec2;
      
      public var §79§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§2!=§.SetV(param1.§2!=§);
         this.§8!Z§.SetV(param1.§8!Z§);
         this.§79§.SetV(param1.§79§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
