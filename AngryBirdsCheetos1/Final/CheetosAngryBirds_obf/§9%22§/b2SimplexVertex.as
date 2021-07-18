package §9"§
{
   import §0!G§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §[`§:b2Vec2;
      
      public var §<!#§:b2Vec2;
      
      public var §?!Z§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[`§.SetV(param1.§[`§);
         }
         loop0:
         while(true)
         {
            this.§<!#§.SetV(param1.§<!#§);
            loop1:
            while(true)
            {
               this.§?!Z§.SetV(param1.§?!Z§);
               while(true)
               {
                  this.a = param1.a;
                  while(_loc3_)
                  {
                     this.indexA = param1.indexA;
                     while(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           if(_loc3_)
                           {
                              this.indexB = param1.indexB;
                              if(!_loc2_)
                              {
                                 return;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
   }
}
