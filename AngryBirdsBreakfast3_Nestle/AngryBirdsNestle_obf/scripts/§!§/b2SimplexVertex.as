package §!§
{
   import §@!E§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §^t§:b2Vec2;
      
      public var §%Z§:b2Vec2;
      
      public var §!R§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§^t§.SetV(param1.§^t§);
            loop0:
            while(true)
            {
               this.§%Z§.SetV(param1.§%Z§);
               loop1:
               while(true)
               {
                  this.§!R§.SetV(param1.§!R§);
                  while(true)
                  {
                     this.a = param1.a;
                     loop3:
                     while(_loc3_ || _loc3_)
                     {
                        while(true)
                        {
                           this.indexA = param1.indexA;
                           while(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                              this.indexB = param1.indexB;
                              if(!(_loc2_ && this))
                              {
                                 return;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
   }
}
