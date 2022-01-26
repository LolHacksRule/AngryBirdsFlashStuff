package §0!2§
{
   import §=E§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §9!J§:b2Vec2;
      
      public var §<j§:b2Vec2;
      
      public var § a§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.§9!J§.SetV(param1.§9!J§);
         this.§<j§.SetV(param1.§<j§);
         this.§ a§.SetV(param1.§ a§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
