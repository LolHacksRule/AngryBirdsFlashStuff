package starling.events
{
   public class §2y§ extends Event
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
      
      private var § j§:Number;
      
      public function §2y§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super(param1,param3);
         }
         do
         {
            this.§ j§ = param2;
         }
         while(_loc4_ && param1);
         
      }
      
      public function get §=g§() : Number
      {
         return this.§ j§;
      }
   }
}
