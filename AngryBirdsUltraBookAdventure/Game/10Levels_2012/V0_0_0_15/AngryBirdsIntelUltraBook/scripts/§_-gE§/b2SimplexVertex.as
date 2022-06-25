package §_-gE§
{
   import §_-Yp§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §_-9x§:b2Vec2;
      
      public var §_-8S§:b2Vec2;
      
      public var §_-04b§:b2Vec2;
      
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
         if(_loc3_)
         {
            this.§_-9x§.SetV(param1.§_-9x§);
            while(true)
            {
               this.§_-8S§.SetV(param1.§_-8S§);
               loop1:
               while(_loc3_ || param1)
               {
                  while(true)
                  {
                     this.§_-04b§.SetV(param1.§_-04b§);
                     loop3:
                     while(true)
                     {
                        this.a = param1.a;
                        loop4:
                        while(!_loc2_)
                        {
                           this.indexA = param1.indexA;
                           while(!_loc2_)
                           {
                              this.indexB = param1.indexB;
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(!_loc2_)
                                 {
                                    return;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
   }
}
