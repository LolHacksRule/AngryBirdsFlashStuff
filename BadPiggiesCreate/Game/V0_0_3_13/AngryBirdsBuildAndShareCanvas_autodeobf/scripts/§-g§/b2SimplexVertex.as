package §-g§
{
   import §1!z§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §8!d§:b2Vec2;
      
      public var §1! §:b2Vec2;
      
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
         this.§8!d§.SetV(param1.§8!d§);
         this.§1! §.SetV(param1.§1! §);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
