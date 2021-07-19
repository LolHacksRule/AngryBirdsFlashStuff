package §3!R§
{
   public class b2TimeStep
   {
       
      
      public var §?u§:Number;
      
      public var §?o§:Number;
      
      public var §const§:Number;
      
      public var §-7§:int;
      
      public var §'P§:int;
      
      public var §?S§:Boolean;
      
      public function b2TimeStep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function Set(param1:b2TimeStep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?u§ = param1.§?u§;
            while(true)
            {
               this.§?o§ = param1.§?o§;
               addr62:
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               this.§-7§ = param1.§-7§;
               while(!(_loc2_ && _loc3_))
               {
                  this.§?S§ = param1.§?S§;
                  if(_loc3_)
                  {
                     return;
                  }
               }
               while(!_loc2_)
               {
                  §§goto(addr62);
                  §§goto(addr47);
               }
               addr47:
               while(true)
               {
                  this.§'P§ = param1.§'P§;
                  §§goto(addr60);
               }
               addr60:
               addr85:
            }
         }
         §§goto(addr85);
      }
   }
}
