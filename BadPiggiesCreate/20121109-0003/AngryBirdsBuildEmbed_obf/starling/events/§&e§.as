package starling.events
{
   public class §&e§ extends Event
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
      
      private var §<!5§:Number;
      
      public function §&e§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1,param3);
            if(_loc5_)
            {
               addr30:
               this.§<!5§ = param2;
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function get §73§() : Number
      {
         return this.§<!5§;
      }
   }
}
