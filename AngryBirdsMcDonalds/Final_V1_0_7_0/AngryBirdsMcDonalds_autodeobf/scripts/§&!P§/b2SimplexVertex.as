package §&!P§
{
   import §^!%§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §[w§:b2Vec2;
      
      public var §5<§:b2Vec2;
      
      public var §5!S§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§[w§.SetV(param1.§[w§);
         this.§5<§.SetV(param1.§5<§);
         this.§5!S§.SetV(param1.§5!S§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
