package §-r§
{
   import §6!H§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §,!?§:b2Vec2;
      
      public var §`-§:b2Vec2;
      
      public var §-T§:b2Vec2;
      
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!?§.SetV(param1.§,!?§);
            while(true)
            {
               this.§`-§.SetV(param1.§`-§);
               while(!_loc3_)
               {
                  loop4:
                  while(!(_loc3_ && param1))
                  {
                     this.indexA = param1.indexA;
                     do
                     {
                        this.indexB = param1.indexB;
                     }
                     while(!(_loc2_ || param1));
                     
                     if(!_loc3_)
                     {
                        addr37:
                        if(_loc3_ && _loc3_)
                        {
                           while(true)
                           {
                              this.a = param1.a;
                              continue loop4;
                              §§goto(addr37);
                           }
                           addr80:
                        }
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§-T§.SetV(param1.§-T§);
            §§goto(addr80);
         }
      }
   }
}
