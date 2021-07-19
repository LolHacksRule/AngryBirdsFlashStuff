package §^9§
{
   import §6Z§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §1?§:b2Vec2;
      
      public var §[!T§:b2Vec2;
      
      public var §%6§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§1?§.SetV(param1.§1?§);
            while(true)
            {
               this.§[!T§.SetV(param1.§[!T§);
               addr92:
               while(_loc2_)
               {
               }
            }
         }
         while(true)
         {
            this.§%6§.SetV(param1.§%6§);
            while(true)
            {
               this.a = param1.a;
               while(_loc2_)
               {
                  if(_loc2_)
                  {
                     this.indexA = param1.indexA;
                     while(!_loc3_)
                     {
                        this.indexB = param1.indexB;
                        if(_loc2_ || _loc3_)
                        {
                           return;
                        }
                     }
                     continue;
                  }
                  §§goto(addr92);
               }
            }
         }
      }
   }
}
