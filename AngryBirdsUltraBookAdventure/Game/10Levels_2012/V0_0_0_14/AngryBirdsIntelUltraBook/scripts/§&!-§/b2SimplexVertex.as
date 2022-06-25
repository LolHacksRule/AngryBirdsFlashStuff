package §&!-§
{
   import §8>§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §7!C§:b2Vec2;
      
      public var §>!c§:b2Vec2;
      
      public var §"S§:b2Vec2;
      
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
         if(!(_loc2_ && this))
         {
            this.§7!C§.SetV(param1.§7!C§);
            loop0:
            while(true)
            {
               this.§>!c§.SetV(param1.§>!c§);
               while(true)
               {
                  this.§"S§.SetV(param1.§"S§);
                  while(_loc3_)
                  {
                     this.a = param1.a;
                     while(!(_loc2_ && param1))
                     {
                        continue loop0;
                        loop4:
                        while(_loc3_ || _loc2_)
                        {
                           while(true)
                           {
                              this.indexB = param1.indexB;
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
   }
}
