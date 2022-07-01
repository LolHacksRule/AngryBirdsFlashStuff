package §!!o§
{
   import §-!2§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §'!S§:b2Vec2;
      
      public var §8!e§:b2Vec2;
      
      public var §[!F§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§'!S§.SetV(param1.§'!S§);
         this.§8!e§.SetV(param1.§8!e§);
         this.§[!F§.SetV(param1.§[!F§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
