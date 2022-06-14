package §55§
{
   import §#]§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §?"&§:b2Vec2;
      
      public var §^!3§:b2Vec2;
      
      public var §=!h§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§?"&§.SetV(param1.§?"&§);
         this.§^!3§.SetV(param1.§^!3§);
         this.§=!h§.SetV(param1.§=!h§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
