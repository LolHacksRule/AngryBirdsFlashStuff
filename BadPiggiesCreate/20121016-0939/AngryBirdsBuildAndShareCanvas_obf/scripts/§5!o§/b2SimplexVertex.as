package §5!o§
{
   import §2"=§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §&!l§:b2Vec2;
      
      public var §`!^§:b2Vec2;
      
      public var w:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
            this.§&!l§.SetV(param1.§&!l§);
         }
         loop0:
         while(true)
         {
            this.§`!^§.SetV(param1.§`!^§);
            loop1:
            while(true)
            {
               this.w.SetV(param1.w);
               loop2:
               do
               {
                  this.a = param1.a;
                  while(_loc2_)
                  {
                     this.indexA = param1.indexA;
                     while(_loc2_)
                     {
                        continue loop0;
                        this.indexB = param1.indexB;
                        if(!_loc3_)
                        {
                           continue loop2;
                        }
                     }
                  }
                  continue loop1;
               }
               while(!_loc2_);
               
               return;
            }
         }
      }
   }
}
