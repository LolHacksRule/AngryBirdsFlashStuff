package §!4§
{
   import §6A§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §2!=§:b2Vec2;
      
      public var §8!Z§:b2Vec2;
      
      public var §79§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
            this.§2!=§.SetV(param1.§2!=§);
            loop0:
            while(true)
            {
               this.§8!Z§.SetV(param1.§8!Z§);
               while(true)
               {
                  this.§79§.SetV(param1.§79§);
                  while(!(_loc2_ && param1))
                  {
                     while(true)
                     {
                        this.a = param1.a;
                        while(true)
                        {
                           this.indexA = param1.indexA;
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
   }
}
