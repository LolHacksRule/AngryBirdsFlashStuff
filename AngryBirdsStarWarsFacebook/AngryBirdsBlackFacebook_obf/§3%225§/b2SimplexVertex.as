package §3"5§
{
   import §[R§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §5#1§:b2Vec2;
      
      public var §6!V§:b2Vec2;
      
      public var w:b2Vec2;
      
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
            this.§5#1§.SetV(param1.§5#1§);
            loop0:
            while(true)
            {
               this.§6!V§.SetV(param1.§6!V§);
               while(true)
               {
                  this.w.SetV(param1.w);
                  addr61:
                  while(!(_loc2_ && _loc3_))
                  {
                     this.indexB = param1.indexB;
                     if(!(_loc2_ && param1))
                     {
                        addr41:
                        if(_loc3_)
                        {
                           addr43:
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 this.a = param1.a;
                                 continue loop0;
                                 §§goto(addr43);
                              }
                              addr88:
                           }
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
   }
}
