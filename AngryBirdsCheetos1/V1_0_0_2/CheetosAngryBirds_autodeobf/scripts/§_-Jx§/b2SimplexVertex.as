package §_-Jx§
{
   import §_-F2§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §_-rz§:b2Vec2;
      
      public var §_-ZN§:b2Vec2;
      
      public var §_-Yr§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§_-rz§.SetV(param1.§_-rz§);
         this.§_-ZN§.SetV(param1.§_-ZN§);
         this.§_-Yr§.SetV(param1.§_-Yr§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
