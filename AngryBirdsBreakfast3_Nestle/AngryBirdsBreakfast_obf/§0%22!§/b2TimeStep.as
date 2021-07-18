package §0"!§
{
   public class b2TimeStep
   {
       
      
      public var §"!n§:Number;
      
      public var §=!9§:Number;
      
      public var §`!s§:Number;
      
      public var §]!X§:int;
      
      public var §5"2§:int;
      
      public var §-"'§:Boolean;
      
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§"!n§ = param1.§"!n§;
            while(true)
            {
               this.§=!9§ = param1.§=!9§;
               loop1:
               while(!(_loc3_ && _loc3_))
               {
                  this.§5"2§ = param1.§5"2§;
                  loop2:
                  while(true)
                  {
                     this.§]!X§ = param1.§]!X§;
                     loop3:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.§-"'§ = param1.§-"'§;
                           if(_loc2_ || param1)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr65);
      }
   }
}
