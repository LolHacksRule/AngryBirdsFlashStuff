package §_-qg§
{
   import §_-Ja§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §_-s3§:b2Vec2;
      
      public var §_-yk§:b2Vec2;
      
      public var §_-ah§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§_-s3§.SetV(param1.§_-s3§);
         if(_loc3_)
         {
            this.§_-yk§.SetV(param1.§_-yk§);
         }
         this.§_-ah§.SetV(param1.§_-ah§);
         this.a = param1.a;
         this.indexA = param1.indexA;
         if(!(_loc2_ && this))
         {
            this.indexB = param1.indexB;
         }
      }
   }
}
