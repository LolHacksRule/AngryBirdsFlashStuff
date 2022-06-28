package §'s§
{
   import §&L§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §]Q§:b2Vec2;
      
      public var §+!?§:b2Vec2;
      
      public var §`c§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§]Q§.SetV(param1.§]Q§);
         this.§+!?§.SetV(param1.§+!?§);
         this.§`c§.SetV(param1.§`c§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
