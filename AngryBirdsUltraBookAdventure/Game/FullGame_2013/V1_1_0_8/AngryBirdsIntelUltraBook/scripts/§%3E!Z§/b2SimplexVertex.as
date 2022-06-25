package §>!Z§
{
   import §&H§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var §<o§:b2Vec2;
      
      public var §4x§:b2Vec2;
      
      public var §=Q§:b2Vec2;
      
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
         if(!_loc2_)
         {
            this.§<o§.SetV(param1.§<o§);
            loop0:
            while(true)
            {
               this.§4x§.SetV(param1.§4x§);
               loop1:
               while(true)
               {
                  this.§=Q§.SetV(param1.§=Q§);
                  while(!_loc2_)
                  {
                     loop5:
                     while(!_loc2_)
                     {
                        this.indexB = param1.indexB;
                        if(_loc3_)
                        {
                           addr31:
                           if(_loc3_ || _loc3_)
                           {
                              return;
                           }
                           addr72:
                           while(_loc3_)
                           {
                              this.indexA = param1.indexA;
                              continue loop5;
                              §§goto(addr31);
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.a = param1.a;
            §§goto(addr72);
         }
      }
   }
}
