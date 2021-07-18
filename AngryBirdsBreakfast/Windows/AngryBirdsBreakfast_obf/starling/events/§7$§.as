package starling.events
{
   public class §7$§ extends Event
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
      
      private var §`#§:Number;
      
      public function §7$§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param3);
         }
         do
         {
            this.§`#§ = param2;
         }
         while(_loc4_);
         
      }
      
      public function get §-^§() : Number
      {
         return this.§`#§;
      }
   }
}
