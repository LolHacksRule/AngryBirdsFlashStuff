package starling.events
{
   public class §#!W§ extends Event
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
      
      private var §5m§:Number;
      
      public function §#!W§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param3);
         }
         do
         {
            this.§5m§ = param2;
         }
         while(!_loc4_);
         
      }
      
      public function get §+!-§() : Number
      {
         return this.§5m§;
      }
   }
}
