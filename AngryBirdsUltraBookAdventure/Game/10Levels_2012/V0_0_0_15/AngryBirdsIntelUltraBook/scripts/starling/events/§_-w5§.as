package starling.events
{
   public class §_-w5§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            ENTER_FRAME = "enterFrame";
         }
      }
      
      private var §_-9M§:Number;
      
      public function §_-w5§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param1,param3);
         }
         do
         {
            this.§_-9M§ = param2;
         }
         while(!_loc4_);
         
      }
      
      public function get §_-kJ§() : Number
      {
         return this.§_-9M§;
      }
   }
}
