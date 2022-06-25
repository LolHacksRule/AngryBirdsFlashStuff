package §72§
{
   import §>H§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §[!r§:b2Vec2;
      
      public var §3!$§:b2Vec2;
      
      public var §^N§:b2Vec2;
      
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§[!r§.SetV(param1.§[!r§);
            loop0:
            while(true)
            {
               this.§3!$§.SetV(param1.§3!$§);
               loop1:
               while(true)
               {
                  this.§^N§.SetV(param1.§^N§);
                  while(true)
                  {
                     this.a = param1.a;
                     while(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              this.indexA = param1.indexA;
                              loop4:
                              while(!(_loc2_ && this))
                              {
                                 while(true)
                                 {
                                    this.indexB = param1.indexB;
                                    if(_loc3_ || _loc2_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 return;
                              }
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
         §§goto(addr64);
      }
   }
}
