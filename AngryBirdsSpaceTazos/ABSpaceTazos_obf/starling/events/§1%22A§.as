package starling.events
{
   public class §1"A§ extends Event
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
      
      private var §2!j§:Number;
      
      public function §1"A§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super(param1,param3);
            do
            {
               this.§2!j§ = param2;
            }
            while(_loc5_);
            
         }
      }
      
      public function get §+q§() : Number
      {
         return this.§2!j§;
      }
   }
}
