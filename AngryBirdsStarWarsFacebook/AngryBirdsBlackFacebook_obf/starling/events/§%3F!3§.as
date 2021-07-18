package starling.events
{
   public class §?!3§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            ENTER_FRAME = "enterFrame";
         }
      }
      
      private var §5#9§:Number;
      
      public function §?!3§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super(param1,param3);
         }
         do
         {
            this.§5#9§ = param2;
         }
         while(!_loc5_);
         
      }
      
      public function get §@"q§() : Number
      {
         return this.§5#9§;
      }
   }
}
