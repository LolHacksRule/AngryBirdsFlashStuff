package §#V§
{
   public class b2TimeStep
   {
       
      
      public var §&!'§:Number;
      
      public var §-!i§:Number;
      
      public var § !o§:Number;
      
      public var §,!v§:int;
      
      public var §-!x§:int;
      
      public var §#!P§:Boolean;
      
      public function b2TimeStep()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public function Set(param1:b2TimeStep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§&!'§ = param1.§&!'§;
            while(true)
            {
               this.§-!i§ = param1.§-!i§;
               loop2:
               while(!(_loc3_ && this))
               {
                  this.§,!v§ = param1.§,!v§;
                  do
                  {
                     this.§#!P§ = param1.§#!P§;
                  }
                  while(_loc3_ && param1);
                  
                  if(!_loc3_)
                  {
                     addr52:
                     if(!(_loc2_ || _loc3_))
                     {
                        while(true)
                        {
                           this.§-!x§ = param1.§-!x§;
                           continue loop2;
                           §§goto(addr52);
                        }
                        addr94:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr94);
      }
   }
}
