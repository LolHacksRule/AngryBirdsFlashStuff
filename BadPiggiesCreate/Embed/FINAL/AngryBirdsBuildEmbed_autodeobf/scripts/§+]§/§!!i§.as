package §+]§
{
   public class §!!i§
   {
       
      
      private var §?!%§:Object;
      
      private var §@!2§:Function;
      
      public function §!!i§(param1:Function, param2:Object = null)
      {
         super();
         this.§?!%§ = param2;
         this.§@!2§ = param1;
      }
      
      public function get value() : Object
      {
         return this.§?!%§;
      }
      
      public function execute() : void
      {
         if(this.§@!2§ != null)
         {
            if(this.§?!%§)
            {
               this.§@!2§(this.§?!%§);
            }
            else
            {
               this.§@!2§();
            }
         }
      }
   }
}
