package § G§
{
   import §9"§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §<j§:b2Vec2;
      
      public var § a§:b2Vec2;
      
      public var §+!!§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
            this.§<j§.SetV(param1.§<j§);
         }
         loop0:
         while(true)
         {
            this.§ a§.SetV(param1.§ a§);
            loop1:
            while(true)
            {
               this.§+!!§.SetV(param1.§+!!§);
               while(true)
               {
                  this.a = param1.a;
                  while(_loc3_ || _loc3_)
                  {
                     if(_loc3_)
                     {
                        this.indexA = param1.indexA;
                        while(_loc3_ || _loc3_)
                        {
                           continue loop0;
                           this.indexB = param1.indexB;
                           if(_loc3_ || _loc3_)
                           {
                              return;
                           }
                        }
                        continue;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
   }
}
