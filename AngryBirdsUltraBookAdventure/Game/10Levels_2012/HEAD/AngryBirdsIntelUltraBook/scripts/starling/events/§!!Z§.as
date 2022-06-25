package starling.events
{
   public class §!!Z§ extends Event
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
      
      private var §4g§:Number;
      
      public function §!!Z§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param3);
         }
         do
         {
            this.§4g§ = param2;
         }
         while(!_loc4_);
         
      }
      
      public function get §-1§() : Number
      {
         return this.§4g§;
      }
   }
}
