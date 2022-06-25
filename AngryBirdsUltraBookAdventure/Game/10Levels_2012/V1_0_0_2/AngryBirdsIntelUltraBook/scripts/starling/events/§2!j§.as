package starling.events
{
   public class §2!j§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            ENTER_FRAME = "enterFrame";
         }
      }
      
      private var §try§:Number;
      
      public function §2!j§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param3);
            do
            {
               this.§try§ = param2;
            }
            while(!_loc4_);
            
         }
      }
      
      public function get §5!x§() : Number
      {
         return this.§try§;
      }
   }
}
