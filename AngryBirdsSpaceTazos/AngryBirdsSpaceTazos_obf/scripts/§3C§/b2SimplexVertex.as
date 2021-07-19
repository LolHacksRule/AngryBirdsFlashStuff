package §3c§
{
   import §9t§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §,"#§:b2Vec2;
      
      public var §?!Q§:b2Vec2;
      
      public var w:b2Vec2;
      
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,"#§.SetV(param1.§,"#§);
            while(true)
            {
               this.§?!Q§.SetV(param1.§?!Q§);
               addr97:
               while(_loc2_)
               {
               }
            }
         }
         while(true)
         {
            this.w.SetV(param1.w);
            do
            {
               this.a = param1.a;
               loop4:
               do
               {
                  this.indexA = param1.indexA;
                  while(!_loc3_)
                  {
                     this.indexB = param1.indexB;
                     if(_loc2_ || this)
                     {
                        continue loop4;
                     }
                  }
                  §§goto(addr97);
               }
               while(_loc3_ && _loc2_);
               
            }
            while(_loc3_ && param1);
            
            return;
         }
      }
   }
}
