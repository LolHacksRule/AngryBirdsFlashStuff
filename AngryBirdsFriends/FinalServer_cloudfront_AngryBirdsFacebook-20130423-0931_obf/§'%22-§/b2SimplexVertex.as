package §'"-§
{
   import §6!^§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §["L§:b2Vec2;
      
      public var §9!U§:b2Vec2;
      
      public var §&!t§:b2Vec2;
      
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
         if(!_loc3_)
         {
            this.§["L§.SetV(param1.§["L§);
            loop0:
            while(true)
            {
               this.§9!U§.SetV(param1.§9!U§);
               while(true)
               {
                  this.§&!t§.SetV(param1.§&!t§);
                  loop2:
                  while(!_loc3_)
                  {
                     this.a = param1.a;
                     while(!_loc3_)
                     {
                        this.indexA = param1.indexA;
                        loop4:
                        while(_loc2_ || this)
                        {
                           continue loop2;
                           while(true)
                           {
                              this.indexB = param1.indexB;
                              if(!(_loc3_ && param1))
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           if(!_loc3_)
                           {
                              return;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr70);
      }
   }
}
