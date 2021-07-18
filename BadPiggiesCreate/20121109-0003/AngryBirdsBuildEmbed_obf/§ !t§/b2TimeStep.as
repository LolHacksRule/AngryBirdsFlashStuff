package § !t§
{
   public class b2TimeStep
   {
       
      
      public var §>N§:Number;
      
      public var §3-§:Number;
      
      public var §5!;§:Number;
      
      public var §#!P§:int;
      
      public var §]S§:int;
      
      public var § !K§:Boolean;
      
      public function b2TimeStep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function Set(param1:b2TimeStep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§>N§ = param1.§>N§;
            if(!(_loc3_ && _loc2_))
            {
               addr54:
               this.§3-§ = param1.§3-§;
               if(!_loc3_)
               {
                  §§goto(addr60);
               }
               §§goto(addr71);
            }
            addr60:
            this.§]S§ = param1.§]S§;
            if(!(_loc3_ && this))
            {
               addr71:
               this.§#!P§ = param1.§#!P§;
               if(_loc2_)
               {
                  this.§ !K§ = param1.§ !K§;
               }
            }
            return;
         }
         §§goto(addr54);
      }
   }
}
