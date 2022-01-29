package §'"$§
{
   import § "%§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §]!L§:b2Vec2;
      
      public var §6A§:b2Vec2;
      
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
         this.§]!L§.SetV(param1.§]!L§);
         this.§6A§.SetV(param1.§6A§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
