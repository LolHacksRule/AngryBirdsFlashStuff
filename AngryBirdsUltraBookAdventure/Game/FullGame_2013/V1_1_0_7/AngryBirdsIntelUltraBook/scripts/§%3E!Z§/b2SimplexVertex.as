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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
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
            this.§<o§.SetV(param1.§<o§);
            loop0:
            while(true)
            {
               this.§4x§.SetV(param1.§4x§);
               while(true)
               {
                  this.§=Q§.SetV(param1.§=Q§);
                  addr97:
                  while(true)
                  {
                     this.a = param1.a;
                     continue loop0;
                  }
                  addr60:
                  if(!(_loc3_ && _loc2_))
                  {
                     this.indexB = param1.indexB;
                     addr67:
                     if(_loc3_ && this)
                     {
                        while(!_loc3_)
                        {
                           §§goto(addr60);
                           §§goto(addr67);
                        }
                        §§goto(addr97);
                        addr58:
                     }
                     addr35:
                     if(!(_loc3_ && _loc3_))
                     {
                        return;
                        addr52:
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr52);
      }
   }
}
