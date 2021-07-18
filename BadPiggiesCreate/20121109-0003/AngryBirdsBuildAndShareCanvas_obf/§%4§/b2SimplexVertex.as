package §%4§
{
   import §<!a§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §9§:b2Vec2;
      
      public var §+m§:b2Vec2;
      
      public var w:b2Vec2;
      
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
         if(_loc3_ || _loc2_)
         {
            this.§9§.SetV(param1.§9§);
            loop0:
            while(true)
            {
               this.§+m§.SetV(param1.§+m§);
               while(true)
               {
                  this.w.SetV(param1.w);
                  continue loop0;
                  loop4:
                  while(!(_loc2_ && _loc2_))
                  {
                     this.indexB = param1.indexB;
                     if(_loc3_ || param1)
                     {
                        if(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              this.indexA = param1.indexA;
                              continue loop4;
                           }
                           addr74:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
   }
}
