package §55§
{
   import §#]§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §?"&§:b2Vec2;
      
      public var §^!3§:b2Vec2;
      
      public var §=!h§:b2Vec2;
      
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
         if(_loc3_)
         {
            this.§?"&§.SetV(param1.§?"&§);
            loop0:
            while(true)
            {
               this.§^!3§.SetV(param1.§^!3§);
               while(true)
               {
                  this.§=!h§.SetV(param1.§=!h§);
                  loop2:
                  while(!(_loc2_ && param1))
                  {
                     if(!_loc2_)
                     {
                        loop3:
                        while(true)
                        {
                           this.a = param1.a;
                           while(true)
                           {
                              this.indexA = param1.indexA;
                              while(_loc3_)
                              {
                                 this.indexB = param1.indexB;
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break loop3;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        return;
                        addr83:
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr83);
      }
   }
}
