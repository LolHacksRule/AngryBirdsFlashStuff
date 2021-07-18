package §+]§
{
   public class §!!i§
   {
       
      
      private var §?!%§:Object;
      
      private var §@!2§:Function;
      
      public function §!!i§(param1:Function, param2:Object = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super();
            if(!(_loc4_ && param2))
            {
               this.§?!%§ = param2;
               if(!_loc4_)
               {
                  addr47:
                  this.§@!2§ = param1;
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function get value() : Object
      {
         return this.§?!%§;
      }
      
      public function execute() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§@!2§ != null)
            {
               if(!_loc1_)
               {
                  if(this.§?!%§)
                  {
                     if(!_loc2_)
                     {
                     }
                  }
                  else
                  {
                     this.§@!2§();
                  }
                  §§goto(addr59);
               }
               this.§@!2§(this.§?!%§);
               if(_loc1_ && _loc2_)
               {
               }
            }
         }
         addr59:
      }
   }
}
