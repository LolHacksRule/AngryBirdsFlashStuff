package §`w§
{
   public class b2TimeStep
   {
       
      
      public var §^Z§:Number;
      
      public var §[!%§:Number;
      
      public var §87§:Number;
      
      public var §>!,§:int;
      
      public var §44§:int;
      
      public var §[8§:Boolean;
      
      public function b2TimeStep()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function Set(param1:b2TimeStep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§^Z§ = param1.§^Z§;
            loop0:
            while(true)
            {
               this.§[!%§ = param1.§[!%§;
               loop1:
               while(true)
               {
                  this.§44§ = param1.§44§;
                  while(true)
                  {
                     this.§>!,§ = param1.§>!,§;
                     loop3:
                     while(!(_loc2_ && param1))
                     {
                        while(true)
                        {
                           this.§[8§ = param1.§[8§;
                           if(_loc3_ || _loc2_)
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
   }
}
