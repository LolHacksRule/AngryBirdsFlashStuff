package §&!n§
{
   import §9v§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §3!d§:b2Vec2;
      
      public var §`!Z§:b2Vec2;
      
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
         this.§3!d§.SetV(param1.§3!d§);
         this.§`!Z§.SetV(param1.§`!Z§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
