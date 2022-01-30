package §!;§
{
   import §-!A§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §1!h§:b2Vec2;
      
      public var §@!H§:b2Vec2;
      
      public var §`!R§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§1!h§.SetV(param1.§1!h§);
         this.§@!H§.SetV(param1.§@!H§);
         this.§`!R§.SetV(param1.§`!R§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
