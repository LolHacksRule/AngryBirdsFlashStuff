package starling.events
{
   public class §_-QY§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            RESIZE = "resize";
         }
      }
      
      private var §_-sa§:int;
      
      private var §_-cr§:int;
      
      public function §_-QY§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param4);
            if(!(_loc5_ && param1))
            {
               §§goto(addr41);
            }
            §§goto(addr46);
         }
         addr41:
         this.§_-sa§ = param2;
         if(!_loc5_)
         {
            addr46:
            this.§_-cr§ = param3;
         }
      }
      
      public function get width() : int
      {
         return this.§_-sa§;
      }
      
      public function get height() : int
      {
         return this.§_-cr§;
      }
   }
}
