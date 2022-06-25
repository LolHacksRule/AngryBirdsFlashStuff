package §!m§
{
   import §>!8§.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var § !E§:b2Vec2;
      
      public var §2!2§:b2Vec2;
      
      public var §^[§:b2Vec2;
      
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
         if(_loc3_ || this)
         {
            this.§ !E§.SetV(param1.§ !E§);
            loop0:
            while(true)
            {
               this.§2!2§.SetV(param1.§2!2§);
               addr102:
               while(true)
               {
                  this.§^[§.SetV(param1.§^[§);
                  while(true)
                  {
                     this.a = param1.a;
                     addr53:
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc2_)
                        {
                           return;
                           addr62:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            this.indexA = param1.indexA;
            while(_loc3_)
            {
               this.indexB = param1.indexB;
               if(_loc2_ && this)
               {
                  continue;
               }
               if(_loc2_)
               {
                  continue loop3;
               }
               §§goto(addr53);
            }
            §§goto(addr102);
         }
         §§goto(addr62);
      }
   }
}
