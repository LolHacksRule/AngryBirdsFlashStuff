package §3m§
{
   import §&!S§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §[!l§:b2Vec2;
      
      public var §!q§:b2Vec2;
      
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
         this.§[!l§.SetV(param1.§[!l§);
         this.§!q§.SetV(param1.§!q§);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
