package §`!H§
{
   import §?!&§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §28§:b2Vec2;
      
      public var §`j§:b2Vec2;
      
      public var §81§:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§28§.SetV(param1.§28§);
            while(true)
            {
               this.§`j§.SetV(param1.§`j§);
            }
            addr104:
         }
         loop1:
         while(true)
         {
            this.§81§.SetV(param1.§81§);
            loop2:
            while(!_loc2_)
            {
               this.a = param1.a;
               while(_loc3_)
               {
                  this.indexA = param1.indexA;
                  while(_loc3_)
                  {
                     this.indexB = param1.indexB;
                     if(!(_loc2_ && param1))
                     {
                        if(_loc3_)
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
               }
               continue loop1;
            }
            §§goto(addr104);
         }
      }
   }
}
