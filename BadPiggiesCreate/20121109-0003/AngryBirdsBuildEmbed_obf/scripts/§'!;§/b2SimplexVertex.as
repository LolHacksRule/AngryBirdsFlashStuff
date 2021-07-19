package §'!;§
{
   import §<!B§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §!! §:b2Vec2;
      
      public var §0!j§:b2Vec2;
      
      public var §6! §:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§!! §.SetV(param1.§!! §);
         if(_loc3_)
         {
            this.§0!j§.SetV(param1.§0!j§);
            this.§6! §.SetV(param1.§6! §);
            this.a = param1.a;
         }
         this.indexA = param1.indexA;
         if(_loc3_)
         {
            this.indexB = param1.indexB;
         }
      }
   }
}
