package starling.events
{
   public class §3;§ extends Event
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
      
      private var §#§:Number;
      
      public function §3;§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param1,param3);
         }
         do
         {
            this.§#§ = param2;
         }
         while(!(_loc4_ || this));
         
      }
      
      public function get §2!p§() : Number
      {
         return this.§#§;
      }
   }
}
