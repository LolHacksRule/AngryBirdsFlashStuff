package starling.events
{
   public class §&Z§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            ENTER_FRAME = "enterFrame";
         }
      }
      
      private var §2!,§:Number;
      
      public function §&Z§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param3);
            do
            {
               this.§2!,§ = param2;
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public function get §@6§() : Number
      {
         return this.§2!,§;
      }
   }
}
