package starling.events
{
   public class §7a§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            ENTER_FRAME = "enterFrame";
         }
      }
      
      private var §<9§:Number;
      
      public function §7a§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super(param1,param3);
         }
         do
         {
            this.§<9§ = param2;
         }
         while(_loc4_ && param2);
         
      }
      
      public function get §^x§() : Number
      {
         return this.§<9§;
      }
   }
}
