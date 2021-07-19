package starling.events
{
   public class §_-fx§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            ENTER_FRAME = "enterFrame";
         }
      }
      
      private var §_-Ey§:Number;
      
      public function §_-fx§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param3);
            if(!(_loc5_ && param2))
            {
               this.§_-Ey§ = param2;
            }
         }
      }
      
      public function get passedTime() : Number
      {
         return this.§_-Ey§;
      }
   }
}
